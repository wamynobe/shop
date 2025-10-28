enum AttachmentType { image, video, audio, document, other }

extension AttachmentTypeExtension on AttachmentType {
  static AttachmentType fromString(String type) {
    return AttachmentType.values.firstWhere(
      (e) => e.name == type,
      orElse: () => AttachmentType.other,
    );
  }
}
