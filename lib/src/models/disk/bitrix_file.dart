import 'package:json_annotation/json_annotation.dart';

part 'bitrix_file.g.dart';

ImageSize? parseImageSize(dynamic json) {
  if (json == null || json is bool) return null;

  return ImageSize.fromJson(json);
}

@JsonSerializable()
class BitrixFile {
  final int id;
  final int chatId;
  final DateTime date;
  final String type;
  final String name;
  final String extension;
  final int size;
  @JsonKey(fromJson: parseImageSize)
  final ImageSize? image;
  final String? status;
  @JsonKey(defaultValue: 0)
  final int progress;
  final int authorId;
  final String authorName;
  final String? urlPreview;
  final String? urlShow;
  final String? urlDownload;
  final ViewerAttrs? viewerAttrs;

  BitrixFile(
      {required this.id,
      required this.chatId,
      required this.date,
      required this.type,
      required this.name,
      required this.extension,
      required this.size,
      this.image,
      this.status,
      required this.progress,
      required this.authorId,
      required this.authorName,
      this.urlPreview,
      this.urlShow,
      this.urlDownload,
      this.viewerAttrs});

  @override
  String toString() {
    return 'BitrixFile{id: $id, chatId: $chatId, date: $date, type: $type,'
        ' name: $name, extension: $extension, size: $size, image: $image, '
        'status: $status, progress: $progress, authorId: $authorId,'
        ' authorName: $authorName, urlPreview: $urlPreview, urlShow: $urlShow,'
        ' urlDownload: $urlDownload, viewerAttrs: $viewerAttrs}';
  }

  factory BitrixFile.fromJson(Map<String, dynamic> json) => _$BitrixFileFromJson(json);
  Map<String, dynamic> toJson() => _$BitrixFileToJson(this);
}

@JsonSerializable()
class ImageSize {
  @JsonKey(defaultValue: 0)
  final int width;
  @JsonKey(defaultValue: 0)
  final int height;

  ImageSize(this.width, this.height);

  factory ImageSize.fromJson(Map<String, dynamic> json) =>
      _$ImageSizeFromJson(json);

  Map<String, dynamic> toJson() => _$ImageSizeToJson(this);

  @override
  String toString() {
    return 'ImageSize{width: $width, height: $height}';
  }
}

@JsonSerializable()
class ViewerAttrs {
  final String title;
  final String src;
  final String? viewerGroupBy;
  final String? viewerType;
  final String? objectId;
  final String? actions;

  ViewerAttrs(
      {required this.title,
      required this.src,
      this.viewerGroupBy,
      this.viewerType,
      this.objectId,
      this.actions});

  factory ViewerAttrs.fromJson(Map<String, dynamic> json) => _$ViewerAttrsFromJson(json);
  Map<String, dynamic> toJson() => _$ViewerAttrsToJson(this);

  @override
  String toString() {
    return 'ViewerAttrs{title: $title, src: $src, viewerGroupBy: $viewerGroupBy,'
        ' viewerType: $viewerType, objectId: $objectId, actions: $actions}';
  }
}
