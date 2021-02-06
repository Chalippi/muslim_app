import 'package:meta/meta.dart';
import 'package:muslim_app/model/kota.dart';

@immutable
class KotaState {
  final String id;
  final String nama;
  final List<Kota> kotas;

  KotaState({
    this.id,
    this.nama,
    this.kotas
  })

  factory KotaState.initial() => KotaState(
    id: "",
    nama: "",
    kotas: const [],
  );

  KotaState copyWith({
    @required String id,
    @required String nama,
    @required List<Kota> kotas,
  }) {
    return KotaState(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      kotas: kotas ?? this.kotas,
    );
  }
}
