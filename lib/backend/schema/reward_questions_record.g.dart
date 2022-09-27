// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_questions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RewardQuestionsRecord> _$rewardQuestionsRecordSerializer =
    new _$RewardQuestionsRecordSerializer();

class _$RewardQuestionsRecordSerializer
    implements StructuredSerializer<RewardQuestionsRecord> {
  @override
  final Iterable<Type> types = const [
    RewardQuestionsRecord,
    _$RewardQuestionsRecord
  ];
  @override
  final String wireName = 'RewardQuestionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RewardQuestionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.question;
    if (value != null) {
      result
        ..add('question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answerIndex;
    if (value != null) {
      result
        ..add('answer_index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sequence;
    if (value != null) {
      result
        ..add('sequence')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.option1;
    if (value != null) {
      result
        ..add('option-1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.option2;
    if (value != null) {
      result
        ..add('option-2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.option3;
    if (value != null) {
      result
        ..add('option-3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.option4;
    if (value != null) {
      result
        ..add('option-4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RewardQuestionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RewardQuestionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answer_index':
          result.answerIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sequence':
          result.sequence = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'option-1':
          result.option1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'option-2':
          result.option2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'option-3':
          result.option3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'option-4':
          result.option4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RewardQuestionsRecord extends RewardQuestionsRecord {
  @override
  final String? question;
  @override
  final int? answerIndex;
  @override
  final int? sequence;
  @override
  final String? option1;
  @override
  final String? option2;
  @override
  final String? option3;
  @override
  final String? option4;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RewardQuestionsRecord(
          [void Function(RewardQuestionsRecordBuilder)? updates]) =>
      (new RewardQuestionsRecordBuilder()..update(updates))._build();

  _$RewardQuestionsRecord._(
      {this.question,
      this.answerIndex,
      this.sequence,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.ffRef})
      : super._();

  @override
  RewardQuestionsRecord rebuild(
          void Function(RewardQuestionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RewardQuestionsRecordBuilder toBuilder() =>
      new RewardQuestionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RewardQuestionsRecord &&
        question == other.question &&
        answerIndex == other.answerIndex &&
        sequence == other.sequence &&
        option1 == other.option1 &&
        option2 == other.option2 &&
        option3 == other.option3 &&
        option4 == other.option4 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, question.hashCode),
                                answerIndex.hashCode),
                            sequence.hashCode),
                        option1.hashCode),
                    option2.hashCode),
                option3.hashCode),
            option4.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RewardQuestionsRecord')
          ..add('question', question)
          ..add('answerIndex', answerIndex)
          ..add('sequence', sequence)
          ..add('option1', option1)
          ..add('option2', option2)
          ..add('option3', option3)
          ..add('option4', option4)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RewardQuestionsRecordBuilder
    implements Builder<RewardQuestionsRecord, RewardQuestionsRecordBuilder> {
  _$RewardQuestionsRecord? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  int? _answerIndex;
  int? get answerIndex => _$this._answerIndex;
  set answerIndex(int? answerIndex) => _$this._answerIndex = answerIndex;

  int? _sequence;
  int? get sequence => _$this._sequence;
  set sequence(int? sequence) => _$this._sequence = sequence;

  String? _option1;
  String? get option1 => _$this._option1;
  set option1(String? option1) => _$this._option1 = option1;

  String? _option2;
  String? get option2 => _$this._option2;
  set option2(String? option2) => _$this._option2 = option2;

  String? _option3;
  String? get option3 => _$this._option3;
  set option3(String? option3) => _$this._option3 = option3;

  String? _option4;
  String? get option4 => _$this._option4;
  set option4(String? option4) => _$this._option4 = option4;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RewardQuestionsRecordBuilder() {
    RewardQuestionsRecord._initializeBuilder(this);
  }

  RewardQuestionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _answerIndex = $v.answerIndex;
      _sequence = $v.sequence;
      _option1 = $v.option1;
      _option2 = $v.option2;
      _option3 = $v.option3;
      _option4 = $v.option4;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RewardQuestionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RewardQuestionsRecord;
  }

  @override
  void update(void Function(RewardQuestionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RewardQuestionsRecord build() => _build();

  _$RewardQuestionsRecord _build() {
    final _$result = _$v ??
        new _$RewardQuestionsRecord._(
            question: question,
            answerIndex: answerIndex,
            sequence: sequence,
            option1: option1,
            option2: option2,
            option3: option3,
            option4: option4,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
