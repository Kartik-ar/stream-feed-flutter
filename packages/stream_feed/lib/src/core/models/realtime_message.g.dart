// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtimeMessage<A, Ob> _$RealtimeMessageFromJson<A, Ob>(
  Map json,
  A Function(Object? json) fromJsonA,
  Ob Function(Object? json) fromJsonOb,
) {
  return RealtimeMessage<A, Ob>(
    feed: FeedId.fromId(json['feed'] as String?),
    deleted:
        (json['deleted'] as List<dynamic>).map((e) => e as String).toList(),
    deletedForeignIds:
        ForeignIdTimePair.fromList(json['deleted_foreign_ids'] as List?),
    newActivities: (json['new'] as List<dynamic>?)
        ?.map((e) => EnrichedActivity.fromJson(
            (e as Map?)?.map(
              (k, e) => MapEntry(k as String, e),
            ),
            (value) => fromJsonA(value),
            (value) => fromJsonOb(value)))
        .toList(),
    appId: json['app_id'] as String?,
    publishedAt: json['published_at'] == null
        ? null
        : DateTime.parse(json['published_at'] as String),
  );
}

Map<String, dynamic> _$RealtimeMessageToJson<A, Ob>(
  RealtimeMessage<A, Ob> instance,
  Object? Function(A value) toJsonA,
  Object? Function(Ob value) toJsonOb,
) {
  final val = <String, dynamic>{
    'feed': FeedId.toId(instance.feed),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('app_id', instance.appId);
  val['deleted'] = instance.deleted;
  val['deleted_foreign_ids'] =
      ForeignIdTimePair.toList(instance.deletedForeignIds);
  val['new'] = instance.newActivities
      ?.map((e) => e.toJson(
            (value) => toJsonA(value),
            (value) => toJsonOb(value),
          ))
      .toList();
  writeNotNull('published_at', instance.publishedAt?.toIso8601String());
  return val;
}
