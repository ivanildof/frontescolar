import '/backend/backend.dart';
import '/components/menu_lateral/menu_lateral_widget.dart';
import '/components/menu_superior/menu_superior_widget.dart';
import '/components/menu_superior_celular/menu_superior_celular_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a071_detalhes_alunos_widget.dart' show A071DetalhesAlunosWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class A071DetalhesAlunosModel
    extends FlutterFlowModel<A071DetalhesAlunosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for menuSuperior component.
  late MenuSuperiorModel menuSuperiorModel;
  // Model for menuSuperiorCelular component.
  late MenuSuperiorCelularModel menuSuperiorCelularModel;
  // Model for menuLateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for filialEstudante widget.
  String? filialEstudanteValue;
  FormFieldController<String>? filialEstudanteValueController;
  // State field(s) for classeEstudante widget.
  String? classeEstudanteValue;
  FormFieldController<String>? classeEstudanteValueController;
  // State field(s) for secaoEstudante widget.
  String? secaoEstudanteValue;
  FormFieldController<String>? secaoEstudanteValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<InventarioLoja1Record> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<InventarioLoja1Record>();
  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode1;
  TextEditingController? nomeAlunoTextController1;
  String? Function(BuildContext, String?)? nomeAlunoTextController1Validator;
  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode2;
  TextEditingController? nomeAlunoTextController2;
  String? Function(BuildContext, String?)? nomeAlunoTextController2Validator;
  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode3;
  TextEditingController? nomeAlunoTextController3;
  String? Function(BuildContext, String?)? nomeAlunoTextController3Validator;
  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode4;
  TextEditingController? nomeAlunoTextController4;
  String? Function(BuildContext, String?)? nomeAlunoTextController4Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue1;
  FormFieldController<String>? acadDropDownGeneroValueController1;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue2;
  FormFieldController<String>? acadDropDownGeneroValueController2;
  // State field(s) for CampoDataNascimen widget.
  FocusNode? campoDataNascimenFocusNode;
  TextEditingController? campoDataNascimenTextController;
  final campoDataNascimenMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      campoDataNascimenTextControllerValidator;
  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode5;
  TextEditingController? nomeAlunoTextController5;
  String? Function(BuildContext, String?)? nomeAlunoTextController5Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue3;
  FormFieldController<String>? acadDropDownGeneroValueController3;
  // State field(s) for acadTelMovelAluno widget.
  FocusNode? acadTelMovelAlunoFocusNode;
  TextEditingController? acadTelMovelAlunoTextController;
  final acadTelMovelAlunoMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)?
      acadTelMovelAlunoTextControllerValidator;
  // State field(s) for acadEmailAluno widget.
  FocusNode? acadEmailAlunoFocusNode;
  TextEditingController? acadEmailAlunoTextController;
  String? Function(BuildContext, String?)?
      acadEmailAlunoTextControllerValidator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode1;
  TextEditingController? acadEndAlunoTextController1;
  String? Function(BuildContext, String?)? acadEndAlunoTextController1Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue4;
  FormFieldController<String>? acadDropDownGeneroValueController4;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue5;
  FormFieldController<String>? acadDropDownGeneroValueController5;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode2;
  TextEditingController? acadEndAlunoTextController2;
  String? Function(BuildContext, String?)? acadEndAlunoTextController2Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode3;
  TextEditingController? acadEndAlunoTextController3;
  String? Function(BuildContext, String?)? acadEndAlunoTextController3Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode4;
  TextEditingController? acadEndAlunoTextController4;
  String? Function(BuildContext, String?)? acadEndAlunoTextController4Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode5;
  TextEditingController? acadEndAlunoTextController5;
  String? Function(BuildContext, String?)? acadEndAlunoTextController5Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue6;
  FormFieldController<String>? acadDropDownGeneroValueController6;
  // State field(s) for userLoginNome widget.
  FocusNode? userLoginNomeFocusNode;
  TextEditingController? userLoginNomeTextController;
  String? Function(BuildContext, String?)? userLoginNomeTextControllerValidator;
  // State field(s) for userLoginSenha widget.
  FocusNode? userLoginSenhaFocusNode;
  TextEditingController? userLoginSenhaTextController;
  String? Function(BuildContext, String?)?
      userLoginSenhaTextControllerValidator;
  // State field(s) for userLoginRedifinirSenha widget.
  FocusNode? userLoginRedifinirSenhaFocusNode;
  TextEditingController? userLoginRedifinirSenhaTextController;
  String? Function(BuildContext, String?)?
      userLoginRedifinirSenhaTextControllerValidator;
  // State field(s) for CampoNomeResponsa widget.
  FocusNode? campoNomeResponsaFocusNode;
  TextEditingController? campoNomeResponsaTextController;
  String? Function(BuildContext, String?)?
      campoNomeResponsaTextControllerValidator;
  // State field(s) for detAcadRelacao widget.
  FocusNode? detAcadRelacaoFocusNode;
  TextEditingController? detAcadRelacaoTextController;
  String? Function(BuildContext, String?)?
      detAcadRelacaoTextControllerValidator;
  // State field(s) for CampoEmailResp widget.
  FocusNode? campoEmailRespFocusNode;
  TextEditingController? campoEmailRespTextController;
  String? Function(BuildContext, String?)?
      campoEmailRespTextControllerValidator;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode1;
  TextEditingController? detAcadNomePaiTextController1;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController1Validator;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode2;
  TextEditingController? detAcadNomePaiTextController2;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController2Validator;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode3;
  TextEditingController? detAcadNomePaiTextController3;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController3Validator;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode4;
  TextEditingController? detAcadNomePaiTextController4;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController4Validator;
  // State field(s) for detAcadOcupacao widget.
  FocusNode? detAcadOcupacaoFocusNode;
  TextEditingController? detAcadOcupacaoTextController;
  String? Function(BuildContext, String?)?
      detAcadOcupacaoTextControllerValidator;
  // State field(s) for detAcadRenda widget.
  FocusNode? detAcadRendaFocusNode;
  TextEditingController? detAcadRendaTextController;
  String? Function(BuildContext, String?)? detAcadRendaTextControllerValidator;
  // State field(s) for detAcadEducao widget.
  FocusNode? detAcadEducaoFocusNode;
  TextEditingController? detAcadEducaoTextController;
  String? Function(BuildContext, String?)? detAcadEducaoTextControllerValidator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode6;
  TextEditingController? acadEndAlunoTextController6;
  String? Function(BuildContext, String?)? acadEndAlunoTextController6Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue7;
  FormFieldController<String>? acadDropDownGeneroValueController7;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue8;
  FormFieldController<String>? acadDropDownGeneroValueController8;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode7;
  TextEditingController? acadEndAlunoTextController7;
  String? Function(BuildContext, String?)? acadEndAlunoTextController7Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode8;
  TextEditingController? acadEndAlunoTextController8;
  String? Function(BuildContext, String?)? acadEndAlunoTextController8Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode9;
  TextEditingController? acadEndAlunoTextController9;
  String? Function(BuildContext, String?)? acadEndAlunoTextController9Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode10;
  TextEditingController? acadEndAlunoTextController10;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController10Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue9;
  FormFieldController<String>? acadDropDownGeneroValueController9;
  // State field(s) for detAcadUser widget.
  FocusNode? detAcadUserFocusNode;
  TextEditingController? detAcadUserTextController;
  String? Function(BuildContext, String?)? detAcadUserTextControllerValidator;
  // State field(s) for detAcadSenha widget.
  FocusNode? detAcadSenhaFocusNode;
  TextEditingController? detAcadSenhaTextController;
  String? Function(BuildContext, String?)? detAcadSenhaTextControllerValidator;
  // State field(s) for detAcadRedSenha widget.
  FocusNode? detAcadRedSenhaFocusNode;
  TextEditingController? detAcadRedSenhaTextController;
  String? Function(BuildContext, String?)?
      detAcadRedSenhaTextControllerValidator;
  // State field(s) for DropDownItinerarios widget.
  String? dropDownItinerariosValue;
  FormFieldController<String>? dropDownItinerariosValueController;
  // State field(s) for DropDownVeiculo widget.
  String? dropDownVeiculoValue;
  FormFieldController<String>? dropDownVeiculoValueController;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue10;
  FormFieldController<String>? acadDropDownGeneroValueController10;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode11;
  TextEditingController? acadEndAlunoTextController11;
  final acadEndAlunoMask11 =
      MaskTextInputFormatter(mask: '######-##-##-####-#-#####-###-#######-##');
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController11Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode12;
  TextEditingController? acadEndAlunoTextController12;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController12Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode13;
  TextEditingController? acadEndAlunoTextController13;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController13Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode14;
  TextEditingController? acadEndAlunoTextController14;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController14Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode15;
  TextEditingController? acadEndAlunoTextController15;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController15Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue11;
  FormFieldController<String>? acadDropDownGeneroValueController11;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue12;
  FormFieldController<String>? acadDropDownGeneroValueController12;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode5;
  TextEditingController? detAcadNomePaiTextController5;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController5Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode16;
  TextEditingController? acadEndAlunoTextController16;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController16Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode17;
  TextEditingController? acadEndAlunoTextController17;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController17Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode18;
  TextEditingController? acadEndAlunoTextController18;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController18Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue13;
  FormFieldController<String>? acadDropDownGeneroValueController13;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue14;
  FormFieldController<String>? acadDropDownGeneroValueController14;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode19;
  TextEditingController? acadEndAlunoTextController19;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController19Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode20;
  TextEditingController? acadEndAlunoTextController20;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController20Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode21;
  TextEditingController? acadEndAlunoTextController21;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController21Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue15;
  FormFieldController<String>? acadDropDownGeneroValueController15;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue16;
  FormFieldController<String>? acadDropDownGeneroValueController16;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode22;
  TextEditingController? acadEndAlunoTextController22;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController22Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode23;
  TextEditingController? acadEndAlunoTextController23;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController23Validator;
  // State field(s) for acadEndAluno widget.
  FocusNode? acadEndAlunoFocusNode24;
  TextEditingController? acadEndAlunoTextController24;
  String? Function(BuildContext, String?)?
      acadEndAlunoTextController24Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue17;
  FormFieldController<String>? acadDropDownGeneroValueController17;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue18;
  FormFieldController<String>? acadDropDownGeneroValueController18;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue19;
  FormFieldController<String>? acadDropDownGeneroValueController19;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue20;
  FormFieldController<String>? acadDropDownGeneroValueController20;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue21;
  FormFieldController<String>? acadDropDownGeneroValueController21;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue22;
  FormFieldController<String>? acadDropDownGeneroValueController22;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue23;
  FormFieldController<String>? acadDropDownGeneroValueController23;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode6;
  TextEditingController? detAcadNomePaiTextController6;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController6Validator;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode7;
  TextEditingController? detAcadNomePaiTextController7;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController7Validator;
  // State field(s) for detAcadNomePai widget.
  FocusNode? detAcadNomePaiFocusNode8;
  TextEditingController? detAcadNomePaiTextController8;
  String? Function(BuildContext, String?)?
      detAcadNomePaiTextController8Validator;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue24;
  FormFieldController<String>? acadDropDownGeneroValueController24;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue25;
  FormFieldController<String>? acadDropDownGeneroValueController25;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for acadDropDownGenero widget.
  String? acadDropDownGeneroValue26;
  FormFieldController<String>? acadDropDownGeneroValueController26;
  // State field(s) for filialMulticlasse widget.
  String? filialMulticlasseValue;
  FormFieldController<String>? filialMulticlasseValueController;
  // State field(s) for classeMulticlasse widget.
  String? classeMulticlasseValue;
  FormFieldController<String>? classeMulticlasseValueController;
  // State field(s) for secaoMulticlasse widget.
  String? secaoMulticlasseValue;
  FormFieldController<String>? secaoMulticlasseValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController54;
  String? Function(BuildContext, String?)? textController54Validator;
  List<InventarioLoja1Record> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<InventarioLoja1Record>();
  // State field(s) for filalCategoria widget.
  String? filalCategoriaValue;
  FormFieldController<String>? filalCategoriaValueController;
  // State field(s) for nomeCategoria widget.
  FocusNode? nomeCategoriaFocusNode;
  TextEditingController? nomeCategoriaTextController;
  String? Function(BuildContext, String?)? nomeCategoriaTextControllerValidator;
  String? _nomeCategoriaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Categoria Obrigatória';
    }

    return null;
  }

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<InventarioCategoriaRecord>();

  @override
  void initState(BuildContext context) {
    menuSuperiorModel = createModel(context, () => MenuSuperiorModel());
    menuSuperiorCelularModel =
        createModel(context, () => MenuSuperiorCelularModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
    nomeCategoriaTextControllerValidator =
        _nomeCategoriaTextControllerValidator;
  }

  @override
  void dispose() {
    menuSuperiorModel.dispose();
    menuSuperiorCelularModel.dispose();
    menuLateralModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    paginatedDataTableController1.dispose();
    nomeAlunoFocusNode1?.dispose();
    nomeAlunoTextController1?.dispose();

    nomeAlunoFocusNode2?.dispose();
    nomeAlunoTextController2?.dispose();

    nomeAlunoFocusNode3?.dispose();
    nomeAlunoTextController3?.dispose();

    nomeAlunoFocusNode4?.dispose();
    nomeAlunoTextController4?.dispose();

    campoDataNascimenFocusNode?.dispose();
    campoDataNascimenTextController?.dispose();

    nomeAlunoFocusNode5?.dispose();
    nomeAlunoTextController5?.dispose();

    acadTelMovelAlunoFocusNode?.dispose();
    acadTelMovelAlunoTextController?.dispose();

    acadEmailAlunoFocusNode?.dispose();
    acadEmailAlunoTextController?.dispose();

    acadEndAlunoFocusNode1?.dispose();
    acadEndAlunoTextController1?.dispose();

    acadEndAlunoFocusNode2?.dispose();
    acadEndAlunoTextController2?.dispose();

    acadEndAlunoFocusNode3?.dispose();
    acadEndAlunoTextController3?.dispose();

    acadEndAlunoFocusNode4?.dispose();
    acadEndAlunoTextController4?.dispose();

    acadEndAlunoFocusNode5?.dispose();
    acadEndAlunoTextController5?.dispose();

    userLoginNomeFocusNode?.dispose();
    userLoginNomeTextController?.dispose();

    userLoginSenhaFocusNode?.dispose();
    userLoginSenhaTextController?.dispose();

    userLoginRedifinirSenhaFocusNode?.dispose();
    userLoginRedifinirSenhaTextController?.dispose();

    campoNomeResponsaFocusNode?.dispose();
    campoNomeResponsaTextController?.dispose();

    detAcadRelacaoFocusNode?.dispose();
    detAcadRelacaoTextController?.dispose();

    campoEmailRespFocusNode?.dispose();
    campoEmailRespTextController?.dispose();

    detAcadNomePaiFocusNode1?.dispose();
    detAcadNomePaiTextController1?.dispose();

    detAcadNomePaiFocusNode2?.dispose();
    detAcadNomePaiTextController2?.dispose();

    detAcadNomePaiFocusNode3?.dispose();
    detAcadNomePaiTextController3?.dispose();

    detAcadNomePaiFocusNode4?.dispose();
    detAcadNomePaiTextController4?.dispose();

    detAcadOcupacaoFocusNode?.dispose();
    detAcadOcupacaoTextController?.dispose();

    detAcadRendaFocusNode?.dispose();
    detAcadRendaTextController?.dispose();

    detAcadEducaoFocusNode?.dispose();
    detAcadEducaoTextController?.dispose();

    acadEndAlunoFocusNode6?.dispose();
    acadEndAlunoTextController6?.dispose();

    acadEndAlunoFocusNode7?.dispose();
    acadEndAlunoTextController7?.dispose();

    acadEndAlunoFocusNode8?.dispose();
    acadEndAlunoTextController8?.dispose();

    acadEndAlunoFocusNode9?.dispose();
    acadEndAlunoTextController9?.dispose();

    acadEndAlunoFocusNode10?.dispose();
    acadEndAlunoTextController10?.dispose();

    detAcadUserFocusNode?.dispose();
    detAcadUserTextController?.dispose();

    detAcadSenhaFocusNode?.dispose();
    detAcadSenhaTextController?.dispose();

    detAcadRedSenhaFocusNode?.dispose();
    detAcadRedSenhaTextController?.dispose();

    acadEndAlunoFocusNode11?.dispose();
    acadEndAlunoTextController11?.dispose();

    acadEndAlunoFocusNode12?.dispose();
    acadEndAlunoTextController12?.dispose();

    acadEndAlunoFocusNode13?.dispose();
    acadEndAlunoTextController13?.dispose();

    acadEndAlunoFocusNode14?.dispose();
    acadEndAlunoTextController14?.dispose();

    acadEndAlunoFocusNode15?.dispose();
    acadEndAlunoTextController15?.dispose();

    detAcadNomePaiFocusNode5?.dispose();
    detAcadNomePaiTextController5?.dispose();

    acadEndAlunoFocusNode16?.dispose();
    acadEndAlunoTextController16?.dispose();

    acadEndAlunoFocusNode17?.dispose();
    acadEndAlunoTextController17?.dispose();

    acadEndAlunoFocusNode18?.dispose();
    acadEndAlunoTextController18?.dispose();

    acadEndAlunoFocusNode19?.dispose();
    acadEndAlunoTextController19?.dispose();

    acadEndAlunoFocusNode20?.dispose();
    acadEndAlunoTextController20?.dispose();

    acadEndAlunoFocusNode21?.dispose();
    acadEndAlunoTextController21?.dispose();

    acadEndAlunoFocusNode22?.dispose();
    acadEndAlunoTextController22?.dispose();

    acadEndAlunoFocusNode23?.dispose();
    acadEndAlunoTextController23?.dispose();

    acadEndAlunoFocusNode24?.dispose();
    acadEndAlunoTextController24?.dispose();

    detAcadNomePaiFocusNode6?.dispose();
    detAcadNomePaiTextController6?.dispose();

    detAcadNomePaiFocusNode7?.dispose();
    detAcadNomePaiTextController7?.dispose();

    detAcadNomePaiFocusNode8?.dispose();
    detAcadNomePaiTextController8?.dispose();

    textFieldFocusNode2?.dispose();
    textController54?.dispose();

    paginatedDataTableController2.dispose();
    nomeCategoriaFocusNode?.dispose();
    nomeCategoriaTextController?.dispose();

    paginatedDataTableController3.dispose();
  }
}
