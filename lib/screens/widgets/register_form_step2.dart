import 'package:brasil_fields/brasil_fields.dart';
import 'package:brasil_fields/formatter/cnpj_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../size_config.dart';
import 'default_textfield.dart';
class RegisterFormStep2 extends StatelessWidget {
  final bool switchToCnpj;

  const RegisterFormStep2({@required this.switchToCnpj});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DefaultTextField(
          labelText: switchToCnpj ? 'Razão Social' : 'Nome Completo',
          hintText:
          switchToCnpj ? 'Nome do seu negócio' : 'Como está no seu RG',
        ),
        SizedBox(
          height: 10,
        ),
        DefaultTextField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter.digitsOnly,
            switchToCnpj? CnpjInputFormatter(): CpfInputFormatter(),
          ],
          labelText: switchToCnpj ? 'CNPJ' : 'CPF',
          hintText: switchToCnpj ? '00.000.000/0000-00' : '000.000.000-00',
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Celular (DDD+ Número)'),
                Text('Cod. Confirmação'),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 40,
                    child: DefaultTextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly,
                        TelefoneInputFormatter(digito_9: true),
                      ],
                      prefixText: '+55',
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 40,
                    child: FlatButton(
                      color: Colors.black45,
                      shape: RoundedRectangleBorder(
                          side: switchToCnpj
                              ? BorderSide.none
                              : BorderSide(
                              color: Colors.black54,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {},
                      child: Text(
                        'Verificar',
                        style: TextStyle(
                            color: switchToCnpj ? Colors.white : Colors.white,
                            fontSize: SizeConfig.safeBlockHorizontal * 3),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 40,
                    child: DefaultTextField(
                      keyboardType: TextInputType.number,
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}