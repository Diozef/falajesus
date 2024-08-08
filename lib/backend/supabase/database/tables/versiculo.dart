import '../database.dart';

class VersiculoTable extends SupabaseTable<VersiculoRow> {
  @override
  String get tableName => 'versiculo';

  @override
  VersiculoRow createRow(Map<String, dynamic> data) => VersiculoRow(data);
}

class VersiculoRow extends SupabaseDataRow {
  VersiculoRow(super.data);

  @override
  SupabaseTable get table => VersiculoTable();

  int? get idLivro => getField<int>('id_livro');
  set idLivro(int? value) => setField<int>('id_livro', value);

  int? get capitulo => getField<int>('capitulo');
  set capitulo(int? value) => setField<int>('capitulo', value);

  int? get versiculo => getField<int>('versiculo');
  set versiculo(int? value) => setField<int>('versiculo', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);
}
