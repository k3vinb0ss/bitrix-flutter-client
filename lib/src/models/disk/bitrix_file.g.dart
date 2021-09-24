// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitrix_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BitrixFile _$BitrixFileFromJson(Map<String, dynamic> json) => BitrixFile(
      id: json['id'] as int,
      chatId: json['chatId'] as int,
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
      name: json['name'] as String,
      extension: json['extension'] as String,
      size: json['size'] as int,
      image: parseImageSize(json['image']),
      status: json['status'] as String?,
      progress: json['progress'] as int? ?? 0,
      authorId: json['authorId'] as int,
      authorName: json['authorName'] as String,
      urlPreview: json['urlPreview'] as String?,
      urlShow: json['urlShow'] as String?,
      urlDownload: json['urlDownload'] as String?,
      viewerAttrs: json['viewerAttrs'] == null
          ? null
          : ViewerAttrs.fromJson(json['viewerAttrs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BitrixFileToJson(BitrixFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'date': instance.date.toIso8601String(),
      'type': instance.type,
      'name': instance.name,
      'extension': instance.extension,
      'size': instance.size,
      'image': instance.image,
      'status': instance.status,
      'progress': instance.progress,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'urlPreview': instance.urlPreview,
      'urlShow': instance.urlShow,
      'urlDownload': instance.urlDownload,
      'viewerAttrs': instance.viewerAttrs,
    };

ImageSize _$ImageSizeFromJson(Map<String, dynamic> json) => ImageSize(
      json['width'] as int? ?? 0,
      json['height'] as int? ?? 0,
    );

Map<String, dynamic> _$ImageSizeToJson(ImageSize instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };

ViewerAttrs _$ViewerAttrsFromJson(Map<String, dynamic> json) => ViewerAttrs(
      title: json['title'] as String,
      src: json['src'] as String,
      viewerGroupBy: json['viewerGroupBy'] as String?,
      viewerType: json['viewerType'] as String?,
      objectId: json['objectId'] as String?,
      actions: json['actions'] as String?,
    );

Map<String, dynamic> _$ViewerAttrsToJson(ViewerAttrs instance) =>
    <String, dynamic>{
      'title': instance.title,
      'src': instance.src,
      'viewerGroupBy': instance.viewerGroupBy,
      'viewerType': instance.viewerType,
      'objectId': instance.objectId,
      'actions': instance.actions,
    };
