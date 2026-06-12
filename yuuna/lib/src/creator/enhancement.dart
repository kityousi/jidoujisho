import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yuuna/creator.dart';
import 'package:yuuna/i18n/strings.g.dart';
import 'package:yuuna/models.dart';

/// List of causes that may be of interest when executing an enhancement and
/// may change the context of how the enhancement should be executed.
enum EnhancementTriggerCause {
  /// Used when an enhancement is executed when opening the card creator.
  auto,

  /// Used when an enhancement is executed by clicking the button representing
  /// the enhancement in the card creator.
  manual,

  /// Used when an enhancement is executed by another enhancement.
  cascade,
}

/// An entity that functionally mutates creator fields and returns an output.
/// An enhancement is given and assigned a field at runtime in the
/// initialisation step, and can be assigned to a field enhancement slot.
/// In the creator, the user can then tap on the icon representing the
/// enhancement to execute its functionality.
abstract class Enhancement {
  /// Initialise this enhancement with the predetermined and hardset values.
  Enhancement({
    required this.uniqueKey,
    required this.label,
    required this.description,
    required this.field,
    required this.icon,
  });

  /// A unique name that allows distinguishing this type from others,
  /// particularly for the purposes of differentiating between persistent
  /// settings keys.
  final String uniqueKey;

  /// Name of the enhancement that very shortly describes what it does.
  final String label;

  /// A longer description of what the enhancement can do, or details left
  /// by or regarding the developer.
  final String description;

  /// An icon that will show the enhancement if activated by the user in the
  /// quick menu.
  final IconData icon;

  /// Which field this enhancement is for.
  final Field field;

  /// Localisations for this enhancement, where the key is a locale tag and
  /// the value is the [label] of the enhancement. If the value for the current
  /// locale is non-null, it will be used instead of [label].
  final Map<String, String> labelLocalisation = const {};

  /// Localisations for this enhancement, where the key is a locale tag and
  /// the value is the [description] of the enhancement. If the value for the
  /// current locale is non-null, it will be used instead of [description].
  final Map<String, String> descriptionLocalisation = const {};

  /// Get the best localisation for the label of this enhancement. If there
  /// is no localisation, the fallback is [label].
  String getLocalisedLabel(AppModel appModel) {
    return labelLocalisation[appModel.appLocale.toLanguageTag()] ??
        _localisedLabelFromTranslations() ??
        label;
  }

  /// Get the best localisation for the description of this enhancement. If
  /// there is no localisation, the fallback is [description].
  String getLocalisedDescription(AppModel appModel) {
    return descriptionLocalisation[appModel.appLocale.toLanguageTag()] ??
        _localisedDescriptionFromTranslations() ??
        description;
  }

  String? _localisedLabelFromTranslations() {
    switch (uniqueKey) {
      case 'audio_recorder':
        return t.enhancement_label_audio_recorder;
      case 'bing_images_search':
        return t.enhancement_label_bing_images_search;
      case 'camera':
        return t.enhancement_label_camera;
      case 'clear_field':
        return t.enhancement_label_clear_field;
      case 'crop_image':
        return t.enhancement_label_crop_image;
      case 'forvo_audio':
        return t.enhancement_label_forvo_audio;
      case 'immersion_kit':
        return t.enhancement_label_immersion_kit;
      case 'jpd101_audio':
        return t.enhancement_label_jpd101_audio;
      case 'massif_example_sentences':
        return t.enhancement_label_massif_example_sentences;
      case 'pick_audio':
        return t.enhancement_label_pick_audio;
      case 'open_stash':
        return t.enhancement_label_open_stash;
      case 'pick_image':
        return t.enhancement_label_pick_image;
      case 'pop_from_stash':
        return t.enhancement_label_pop_from_stash;
      case 'save_tags':
        return t.enhancement_label_save_tags;
      case 'search_dictionary':
        return t.enhancement_label_search_dictionary;
      case 'sentence_picker':
        return t.enhancement_label_sentence_picker;
      case 'tatoeba_example_sentences':
        return t.enhancement_label_tatoeba_example_sentences;
      case 'text_segmentation':
        return t.enhancement_label_text_segmentation;
    }

    return null;
  }

  String? _localisedDescriptionFromTranslations() {
    switch (uniqueKey) {
      case 'audio_recorder':
        return t.enhancement_description_audio_recorder;
      case 'bing_images_search':
        return t.enhancement_description_bing_images_search;
      case 'camera':
        return t.enhancement_description_camera;
      case 'clear_field':
        return t.enhancement_description_clear_field;
      case 'crop_image':
        return t.enhancement_description_crop_image;
      case 'forvo_audio':
        return t.enhancement_description_forvo_audio;
      case 'immersion_kit':
        return t.enhancement_description_immersion_kit;
      case 'jpd101_audio':
        return t.enhancement_description_jpd101_audio;
      case 'massif_example_sentences':
        return t.enhancement_description_massif_example_sentences;
      case 'pick_audio':
        return t.enhancement_description_pick_audio;
      case 'open_stash':
        return t.enhancement_description_open_stash;
      case 'pick_image':
        return t.enhancement_description_pick_image;
      case 'pop_from_stash':
        return t.enhancement_description_pop_from_stash;
      case 'save_tags':
        return t.enhancement_description_save_tags;
      case 'search_dictionary':
        return t.enhancement_description_search_dictionary;
      case 'sentence_picker':
        return t.enhancement_description_sentence_picker;
      case 'tatoeba_example_sentences':
        return t.enhancement_description_tatoeba_example_sentences;
      case 'text_segmentation':
        return t.enhancement_description_text_segmentation;
    }

    return null;
  }

  /// Whether or not [initialise] has been called for this enhancement.
  bool _initialised = false;

  /// This function is run at startup. It is not called again if already run.
  Future<void> initialise() async {
    if (_initialised) {
      return;
    } else {
      await prepareResources();
      _initialised = true;
    }
  }

  /// If an enhancement requires resources to function, they can be prepared
  /// here and this function will be run once only at runtime during the
  /// initialisation step.
  Future<void> prepareResources() async {}

  /// Perform a change to the [CreatorModel], executing the functionality of
  /// this enhancement. An [EnhancementTriggerCause] may be used to modify the
  /// behavior of the enhancement's function depending on whether the
  /// enhancement is being executed on auto, manual or cascade modes.
  Future<void> enhanceCreatorParams({
    required BuildContext context,
    required WidgetRef ref,
    required AppModel appModel,
    required CreatorModel creatorModel,
    required EnhancementTriggerCause cause,
  });
}
