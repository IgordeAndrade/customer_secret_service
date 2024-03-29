import 'package:customer_secret_service/edit_personal_information/widgets/custom_dropdown.dart';
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
              widget: Form(
                child: Column(
                  children: const [
                    CustomTextFormField(label: Strings.name),
                    BoxSpacer(),
                    CustomTextFormField(
                      label: Strings.birthDay,
                      textInputType: TextInputType.datetime,
                    ),
                    BoxSpacer(),
                    CustomDropDown(
                      label: Strings.gender,
                      items: [
                        DropdownMenuItem<String>(
                          value: Strings.male,
                          child: Text(Strings.male),
                        ),
                        DropdownMenuItem<String>(
                          value: Strings.female,
                          child: Text(Strings.female),
                        ),
                      ],
                    ),
                    BoxSpacer(),
                  ],
                ),
              ),
              title: Strings.basicInformations,
              onSave: () {},
            ),
            const BoxSpacer(),
            InformationCard(
              onSave: () {},
              title: Strings.adress,
              widget: Form(
                child: Column(
                  children: const [
                    CustomTextFormField(
                      label: Strings.postalCode,
                      textInputType: TextInputType.numberWithOptions(),
                    ),
                    BoxSpacer(),
                    CustomTextFormField(label: Strings.state),
                    BoxSpacer(),
                    CustomTextFormField(label: Strings.city),
                    BoxSpacer(),
                    CustomTextFormField(label: Strings.neighborhood),
                    BoxSpacer(),
                    CustomTextFormField(label: Strings.street),
                    BoxSpacer(),
                    CustomTextFormField(
                      label: Strings.number,
                      textInputType: TextInputType.number,
                    ),
                    BoxSpacer(),
                    CustomTextFormField(label: Strings.complement),
                    BoxSpacer(),
                  ],
                ),
              ),
            ),
            const BoxSpacer(),
            InformationCard(
              widget: Form(
                child: Column(
                  children: const [
                    CustomTextFormField(
                      label: Strings.phone,
                      textInputType: TextInputType.numberWithOptions(),
                    ),
                    BoxSpacer(),
                    CustomTextFormField(label: Strings.mail),
                  ],
                ),
              ),
              title: Strings.contact,
              onSave: () {},
            ),
            const BoxSpacer.small(),
            InformationCard(
                title: Strings.bankInformations,
                widget: Form(
                  child: Column(
                    children: const [
                      CustomDropDown(
                        label: Strings.bank,
                        items: [
                          //TODO: add dropdown items
                          DropdownMenuItem<String>(
                            value: 'InBank',
                            child: Text('InBank'),
                          ),
                        ],
                      ),
                      BoxSpacer(),
                      CustomTextFormField(
                        label: Strings.agency,
                      ),
                      BoxSpacer(),
                      CustomTextFormField(
                        label: Strings.accountNumber,
                      ),
                      BoxSpacer(),
                      CustomTextFormField(
                        label: Strings.pix,
                      ),
                    ],
                  ),
                ),
                onSave: () {}),
            const BoxSpacer.small(),
            InformationCard(
                title: Strings.otherInformations,
                widget: Form(
                  child: Column(
                    children: const [
                      CustomDropDown(
                        items: [
                          DropdownMenuItem(
                            value: Strings.yes,
                            child: Text(Strings.yes),
                          ),
                          DropdownMenuItem(
                            value: Strings.no,
                            child: Text(Strings.no),
                          )
                        ],
                        label: Strings.hasSpecialNeeds,
                      ),
                      BoxSpacer(),
                    ],
                  ),
                ),
                onSave: () {}),
            const BoxSpacer.small(),
          ],
        ),
      ),
    );
  }
}
