// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) apiFailure,
    required TResult Function(String message) modelConversionFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? apiFailure,
    TResult? Function(String message)? modelConversionFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? apiFailure,
    TResult Function(String message)? modelConversionFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APIFailure value) apiFailure,
    required TResult Function(ModelConversionFailure value)
    modelConversionFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APIFailure value)? apiFailure,
    TResult? Function(ModelConversionFailure value)? modelConversionFailure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APIFailure value)? apiFailure,
    TResult Function(ModelConversionFailure value)? modelConversionFailure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$APIFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$APIFailureImplCopyWith(
    _$APIFailureImpl value,
    $Res Function(_$APIFailureImpl) then,
  ) = __$$APIFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$APIFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$APIFailureImpl>
    implements _$$APIFailureImplCopyWith<$Res> {
  __$$APIFailureImplCopyWithImpl(
    _$APIFailureImpl _value,
    $Res Function(_$APIFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$APIFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$APIFailureImpl implements APIFailure {
  const _$APIFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.apiFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIFailureImplCopyWith<_$APIFailureImpl> get copyWith =>
      __$$APIFailureImplCopyWithImpl<_$APIFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) apiFailure,
    required TResult Function(String message) modelConversionFailure,
  }) {
    return apiFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? apiFailure,
    TResult? Function(String message)? modelConversionFailure,
  }) {
    return apiFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? apiFailure,
    TResult Function(String message)? modelConversionFailure,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APIFailure value) apiFailure,
    required TResult Function(ModelConversionFailure value)
    modelConversionFailure,
  }) {
    return apiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APIFailure value)? apiFailure,
    TResult? Function(ModelConversionFailure value)? modelConversionFailure,
  }) {
    return apiFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APIFailure value)? apiFailure,
    TResult Function(ModelConversionFailure value)? modelConversionFailure,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(this);
    }
    return orElse();
  }
}

abstract class APIFailure implements Failure {
  const factory APIFailure({required final String message}) = _$APIFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIFailureImplCopyWith<_$APIFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModelConversionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ModelConversionFailureImplCopyWith(
    _$ModelConversionFailureImpl value,
    $Res Function(_$ModelConversionFailureImpl) then,
  ) = __$$ModelConversionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ModelConversionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ModelConversionFailureImpl>
    implements _$$ModelConversionFailureImplCopyWith<$Res> {
  __$$ModelConversionFailureImplCopyWithImpl(
    _$ModelConversionFailureImpl _value,
    $Res Function(_$ModelConversionFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ModelConversionFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ModelConversionFailureImpl implements ModelConversionFailure {
  const _$ModelConversionFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.modelConversionFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelConversionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelConversionFailureImplCopyWith<_$ModelConversionFailureImpl>
  get copyWith =>
      __$$ModelConversionFailureImplCopyWithImpl<_$ModelConversionFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) apiFailure,
    required TResult Function(String message) modelConversionFailure,
  }) {
    return modelConversionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? apiFailure,
    TResult? Function(String message)? modelConversionFailure,
  }) {
    return modelConversionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? apiFailure,
    TResult Function(String message)? modelConversionFailure,
    required TResult orElse(),
  }) {
    if (modelConversionFailure != null) {
      return modelConversionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(APIFailure value) apiFailure,
    required TResult Function(ModelConversionFailure value)
    modelConversionFailure,
  }) {
    return modelConversionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(APIFailure value)? apiFailure,
    TResult? Function(ModelConversionFailure value)? modelConversionFailure,
  }) {
    return modelConversionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(APIFailure value)? apiFailure,
    TResult Function(ModelConversionFailure value)? modelConversionFailure,
    required TResult orElse(),
  }) {
    if (modelConversionFailure != null) {
      return modelConversionFailure(this);
    }
    return orElse();
  }
}

abstract class ModelConversionFailure implements Failure {
  const factory ModelConversionFailure({required final String message}) =
      _$ModelConversionFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelConversionFailureImplCopyWith<_$ModelConversionFailureImpl>
  get copyWith => throw _privateConstructorUsedError;
}
