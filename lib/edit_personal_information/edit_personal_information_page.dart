import 'package:customer_secret_service/edit_personal_information/widgets/infromations_card.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/widgets/box_spacer.dart';
import 'package:customer_secret_service/login/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditPersonalInformationPage extends StatelessWidget {
  const EditPersonalInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.editPersonalInformations),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BoxSpacer.large(),
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://a-static.mlcdn.com.br/1500x1500/mini-boneco-dollynho-com-9cm-3dprint/memetoysbrasil/d4916540c25811eb8ac54201ac18500e/d37b46065de679a6d336ac8914a0d412.jpeg',
                    ),
                    radius: Sizes.iconSizeLarge,
                  ),
                  Positioned(
                    right: Sizes.stackPositionSmall,
                    bottom: Sizes.stackPositionSmall,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(
                            Sizes.editProfilePictureButton),
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {},
                      child: const Icon(Icons.photo_camera),
                    ),
                  ),
                ],
              ),
            ),
            const BoxSpacer.xLarge(),
            InformationCard(
              onSave: () {},
              title: 'Endereço',
              widget: Form(
                child: Column(
                  children: const [
                    CustomTextFormField(label: 'CEP'),
                    BoxSpacer.small(),
                    CustomTextFormField(label: 'Rua'),
                    BoxSpacer.small(),
                    CustomTextFormField(label: 'Cidade'),
                    BoxSpacer.small(),
                    CustomTextFormField(label: 'Estado'),
                  ],
                ),
              ),
            ),
            const BoxSpacer.small(),
            InformationCard(
                widget: Form(
                    child: Column(
                  children: const [
                    CustomTextFormField(label: 'Celular'),
                    BoxSpacer.small(),
                    CustomTextFormField(label: 'E-mail'),
                  ],
                )),
                title: 'Contato',
                onSave: () {})
          ],
        ),
      ),
    );
  }
}
