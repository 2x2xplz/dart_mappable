// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'copy_with_subtype_test.dart';

class AnimalMapper extends ClassMapperBase<Animal> {
  AnimalMapper._();
  static AnimalMapper? _instance;
  static AnimalMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AnimalMapper._());
      CatMapper.ensureInitialized();
      DogMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Animal';

  static String _$name(Animal v) => v.name;

  @override
  final Map<Symbol, Field<Animal, dynamic>> fields = const {
    #name: Field<Animal, String>('name', _$name),
  };

  static Animal _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Animal', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;
}

mixin AnimalMappable {
  AnimalCopyWith<Animal, Animal, Animal> get copyWith;
}

typedef AnimalCopyWithBound = Animal;

abstract class AnimalCopyWith<$R, $In extends Animal, $Out extends Animal>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  AnimalCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2 extends Animal>(
      Then<Animal, $Out2> t, Then<$Out2, $R2> t2);
}

class CatMapper extends SubClassMapperBase<Cat> {
  CatMapper._();
  static CatMapper? _instance;
  static CatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CatMapper._());
      AnimalMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Cat';

  static String _$name(Cat v) => v.name;
  static String _$color(Cat v) => v.color;

  @override
  final Map<Symbol, Field<Cat, dynamic>> fields = const {
    #name: Field<Cat, String>('name', _$name),
    #color: Field<Cat, String>('color', _$color),
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'Cat';
  @override
  late final ClassMapperBase superMapper = AnimalMapper.ensureInitialized();

  static Cat _instantiate(DecodingData data) {
    return Cat(data.get(#name), data.get(#color));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin CatMappable {
  CatCopyWith<Cat, Cat, Cat> get copyWith =>
      _CatCopyWithImpl(this as Cat, $identity, $identity);
  @override
  String toString() {
    return CatMapper._guard((c) => c.asString(this));
  }
}

extension CatValueCopy<$R, $Out extends Animal>
    on ObjectCopyWith<$R, Cat, $Out> {
  CatCopyWith<$R, Cat, $Out> get $asCat =>
      $base.as((v, t, t2) => _CatCopyWithImpl(v, t, t2));
}

typedef CatCopyWithBound = Animal;

abstract class CatCopyWith<$R, $In extends Cat, $Out extends Animal>
    implements AnimalCopyWith<$R, $In, $Out> {
  @override
  $R call({String? name, String? color});
  CatCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2 extends Animal>(
      Then<Cat, $Out2> t, Then<$Out2, $R2> t2);
}

class _CatCopyWithImpl<$R, $Out extends Animal>
    extends ClassCopyWithBase<$R, Cat, $Out>
    implements CatCopyWith<$R, Cat, $Out> {
  _CatCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Cat> $mapper = CatMapper.ensureInitialized();
  @override
  $R call({String? name, String? color}) => $apply(FieldCopyWithData(
      {if (name != null) #name: name, if (color != null) #color: color}));
  @override
  Cat $make(CopyWithData data) =>
      Cat(data.get(#name, or: $value.name), data.get(#color, or: $value.color));

  @override
  CatCopyWith<$R2, Cat, $Out2> $chain<$R2, $Out2 extends Animal>(
          Then<Cat, $Out2> t, Then<$Out2, $R2> t2) =>
      _CatCopyWithImpl($value, t, t2);
}

class DogMapper extends SubClassMapperBase<Dog> {
  DogMapper._();
  static DogMapper? _instance;
  static DogMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DogMapper._());
      AnimalMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Dog';

  static String _$name(Dog v) => v.name;

  @override
  final Map<Symbol, Field<Dog, dynamic>> fields = const {
    #name: Field<Dog, String>('name', _$name),
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'Dog';
  @override
  late final ClassMapperBase superMapper = AnimalMapper.ensureInitialized();

  static Dog _instantiate(DecodingData data) {
    return Dog(data.get(#name));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin DogMappable {
  DogCopyWith<Dog, Dog, Dog> get copyWith =>
      _DogCopyWithImpl(this as Dog, $identity, $identity);
  @override
  String toString() {
    return DogMapper._guard((c) => c.asString(this));
  }
}

extension DogValueCopy<$R, $Out extends Animal>
    on ObjectCopyWith<$R, Dog, $Out> {
  DogCopyWith<$R, Dog, $Out> get $asDog =>
      $base.as((v, t, t2) => _DogCopyWithImpl(v, t, t2));
}

typedef DogCopyWithBound = Animal;

abstract class DogCopyWith<$R, $In extends Dog, $Out extends Animal>
    implements AnimalCopyWith<$R, $In, $Out> {
  @override
  $R call({String? name});
  DogCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2 extends Animal>(
      Then<Dog, $Out2> t, Then<$Out2, $R2> t2);
}

class _DogCopyWithImpl<$R, $Out extends Animal>
    extends ClassCopyWithBase<$R, Dog, $Out>
    implements DogCopyWith<$R, Dog, $Out> {
  _DogCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Dog> $mapper = DogMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  Dog $make(CopyWithData data) => Dog(data.get(#name, or: $value.name));

  @override
  DogCopyWith<$R2, Dog, $Out2> $chain<$R2, $Out2 extends Animal>(
          Then<Dog, $Out2> t, Then<$Out2, $R2> t2) =>
      _DogCopyWithImpl($value, t, t2);
}

class ZooMapper extends ClassMapperBase<Zoo> {
  ZooMapper._();
  static ZooMapper? _instance;
  static ZooMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ZooMapper._());
      AnimalMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Zoo';

  static Animal _$animal(Zoo v) => v.animal;

  @override
  final Map<Symbol, Field<Zoo, dynamic>> fields = const {
    #animal: Field<Zoo, Animal>('animal', _$animal),
  };

  static Zoo _instantiate(DecodingData data) {
    return Zoo(data.get(#animal));
  }

  @override
  final Function instantiate = _instantiate;
}

mixin ZooMappable {
  ZooCopyWith<Zoo, Zoo, Zoo> get copyWith =>
      _ZooCopyWithImpl(this as Zoo, $identity, $identity);
  @override
  String toString() {
    return ZooMapper._guard((c) => c.asString(this));
  }
}

extension ZooValueCopy<$R, $Out extends Zoo> on ObjectCopyWith<$R, Zoo, $Out> {
  ZooCopyWith<$R, Zoo, $Out> get $asZoo =>
      $base.as((v, t, t2) => _ZooCopyWithImpl(v, t, t2));
}

typedef ZooCopyWithBound = Zoo;

abstract class ZooCopyWith<$R, $In extends Zoo, $Out extends Zoo>
    implements ClassCopyWith<$R, $In, $Out> {
  AnimalCopyWith<$R, Animal, Animal> get animal;
  $R call({Animal? animal});
  ZooCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2 extends Zoo>(
      Then<Zoo, $Out2> t, Then<$Out2, $R2> t2);
}

class _ZooCopyWithImpl<$R, $Out extends Zoo>
    extends ClassCopyWithBase<$R, Zoo, $Out>
    implements ZooCopyWith<$R, Zoo, $Out> {
  _ZooCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Zoo> $mapper = ZooMapper.ensureInitialized();
  @override
  AnimalCopyWith<$R, Animal, Animal> get animal =>
      $value.animal.copyWith.$chain($identity, (v) => call(animal: v));
  @override
  $R call({Animal? animal}) =>
      $apply(FieldCopyWithData({if (animal != null) #animal: animal}));
  @override
  Zoo $make(CopyWithData data) => Zoo(data.get(#animal, or: $value.animal));

  @override
  ZooCopyWith<$R2, Zoo, $Out2> $chain<$R2, $Out2 extends Zoo>(
          Then<Zoo, $Out2> t, Then<$Out2, $R2> t2) =>
      _ZooCopyWithImpl($value, t, t2);
}

class AMapper extends ClassMapperBase<A> {
  AMapper._();
  static AMapper? _instance;
  static AMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AMapper._());
      CMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'A';
  @override
  Function get typeFactory => <T>(f) => f<A<T>>();

  @override
  final Map<Symbol, Field<A, dynamic>> fields = const {};

  static A<T> _instantiate<T>(DecodingData data) {
    return A();
  }

  @override
  final Function instantiate = _instantiate;

  static A<T> fromMap<T>(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<A<T>>(map));
  }

  static A<T> fromJson<T>(String json) {
    return _guard((c) => c.fromJson<A<T>>(json));
  }
}

mixin AMappable<T> {
  String toJson() {
    return AMapper._guard((c) => c.toJson(this as A<T>));
  }

  Map<String, dynamic> toMap() {
    return AMapper._guard((c) => c.toMap(this as A<T>));
  }

  ACopyWith<A<T>, A<T>, A<T>, T> get copyWith =>
      _ACopyWithImpl(this as A<T>, $identity, $identity);
  @override
  String toString() {
    return AMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            AMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return AMapper._guard((c) => c.hash(this));
  }
}

extension AValueCopy<$R, $Out extends A, T> on ObjectCopyWith<$R, A<T>, $Out> {
  ACopyWith<$R, A<T>, $Out, T> get $asA =>
      $base.as((v, t, t2) => _ACopyWithImpl(v, t, t2));
}

typedef ACopyWithBound = A;

abstract class ACopyWith<$R, $In extends A<T>, $Out extends A, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ACopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2 extends A>(
      Then<A<T>, $Out2> t, Then<$Out2, $R2> t2);
}

class _ACopyWithImpl<$R, $Out extends A, T>
    extends ClassCopyWithBase<$R, A<T>, $Out>
    implements ACopyWith<$R, A<T>, $Out, T> {
  _ACopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<A> $mapper = AMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  A<T> $make(CopyWithData data) => A();

  @override
  ACopyWith<$R2, A<T>, $Out2, T> $chain<$R2, $Out2 extends A>(
          Then<A<T>, $Out2> t, Then<$Out2, $R2> t2) =>
      _ACopyWithImpl($value, t, t2);
}

class CMapper extends ClassMapperBase<C> {
  CMapper._();
  static CMapper? _instance;
  static CMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'C';
  @override
  Function get typeFactory => <T>(f) => f<C<T>>();

  @override
  final Map<Symbol, Field<C, dynamic>> fields = const {};

  static C<T> _instantiate<T>(DecodingData data) {
    return C();
  }

  @override
  final Function instantiate = _instantiate;

  static C<T> fromMap<T>(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<C<T>>(map));
  }

  static C<T> fromJson<T>(String json) {
    return _guard((c) => c.fromJson<C<T>>(json));
  }
}

mixin CMappable<T> {
  String toJson() {
    return CMapper._guard((c) => c.toJson(this as C<T>));
  }

  Map<String, dynamic> toMap() {
    return CMapper._guard((c) => c.toMap(this as C<T>));
  }

  CCopyWith<C<T>, C<T>, C<T>, T> get copyWith =>
      _CCopyWithImpl(this as C<T>, $identity, $identity);
  @override
  String toString() {
    return CMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return CMapper._guard((c) => c.hash(this));
  }
}

extension CValueCopy<$R, $Out extends A, T> on ObjectCopyWith<$R, C<T>, $Out> {
  CCopyWith<$R, C<T>, $Out, T> get $asC =>
      $base.as((v, t, t2) => _CCopyWithImpl(v, t, t2));
}

typedef CCopyWithBound = A;

abstract class CCopyWith<$R, $In extends C<T>, $Out extends A, T>
    implements ACopyWith<$R, $In, $Out, T> {
  @override
  $R call();
  CCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2 extends A>(
      Then<C<T>, $Out2> t, Then<$Out2, $R2> t2);
}

class _CCopyWithImpl<$R, $Out extends A, T>
    extends ClassCopyWithBase<$R, C<T>, $Out>
    implements CCopyWith<$R, C<T>, $Out, T> {
  _CCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<C> $mapper = CMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  C<T> $make(CopyWithData data) => C();

  @override
  CCopyWith<$R2, C<T>, $Out2, T> $chain<$R2, $Out2 extends A>(
          Then<C<T>, $Out2> t, Then<$Out2, $R2> t2) =>
      _CCopyWithImpl($value, t, t2);
}

class BMapper extends ClassMapperBase<B> {
  BMapper._();
  static BMapper? _instance;
  static BMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BMapper._());
      AMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'B';

  static List<A<dynamic>?> _$list(B v) => v.list;
  static A<dynamic>? _$a(B v) => v.a;

  @override
  final Map<Symbol, Field<B, dynamic>> fields = const {
    #list: Field<B, List<A<dynamic>?>>('list', _$list),
    #a: Field<B, A<dynamic>?>('a', _$a),
  };

  static B _instantiate(DecodingData data) {
    return B(data.get(#list), data.get(#a));
  }

  @override
  final Function instantiate = _instantiate;

  static B fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<B>(map));
  }

  static B fromJson(String json) {
    return _guard((c) => c.fromJson<B>(json));
  }
}

mixin BMappable {
  String toJson() {
    return BMapper._guard((c) => c.toJson(this as B));
  }

  Map<String, dynamic> toMap() {
    return BMapper._guard((c) => c.toMap(this as B));
  }

  BCopyWith<B, B, B> get copyWith =>
      _BCopyWithImpl(this as B, $identity, $identity);
  @override
  String toString() {
    return BMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            BMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return BMapper._guard((c) => c.hash(this));
  }
}

extension BValueCopy<$R, $Out extends B> on ObjectCopyWith<$R, B, $Out> {
  BCopyWith<$R, B, $Out> get $asB =>
      $base.as((v, t, t2) => _BCopyWithImpl(v, t, t2));
}

typedef BCopyWithBound = B;

abstract class BCopyWith<$R, $In extends B, $Out extends B>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, A<dynamic>?, ACopyWith<$R, A<dynamic>, A<dynamic>, dynamic>?>
      get list;
  ACopyWith<$R, A<dynamic>, A<dynamic>, dynamic>? get a;
  $R call({List<A<dynamic>?>? list, A<dynamic>? a});
  BCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2 extends B>(
      Then<B, $Out2> t, Then<$Out2, $R2> t2);
}

class _BCopyWithImpl<$R, $Out extends B> extends ClassCopyWithBase<$R, B, $Out>
    implements BCopyWith<$R, B, $Out> {
  _BCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<B> $mapper = BMapper.ensureInitialized();
  @override
  ListCopyWith<$R, A<dynamic>?, ACopyWith<$R, A<dynamic>, A<dynamic>, dynamic>?>
      get list => ListCopyWith(
          $value.list,
          (v, t) => v?.copyWith.$chain<$R, A<dynamic>>($identity, t),
          (v) => call(list: v));
  @override
  ACopyWith<$R, A<dynamic>, A<dynamic>, dynamic>? get a =>
      $value.a?.copyWith.$chain($identity, (v) => call(a: v));
  @override
  $R call({List<A<dynamic>?>? list, Object? a = $none}) =>
      $apply(FieldCopyWithData(
          {if (list != null) #list: list, if (a != $none) #a: a}));
  @override
  B $make(CopyWithData data) =>
      B(data.get(#list, or: $value.list), data.get(#a, or: $value.a));

  @override
  BCopyWith<$R2, B, $Out2> $chain<$R2, $Out2 extends B>(
          Then<B, $Out2> t, Then<$Out2, $R2> t2) =>
      _BCopyWithImpl($value, t, t2);
}