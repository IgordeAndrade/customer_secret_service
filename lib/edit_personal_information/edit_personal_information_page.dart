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
                    BoxSpacer.small(),
                    CustomTextFormField(
                      label: Strings.birthDay,
                      textInputType: TextInputType.datetime,
                    ),
                    BoxSpacer.small(),
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
                        DropdownMenuItem<String>(
                          value: 'Menine',
                          child: Text('Menine'),
                        )
                      ],
                    ),
                    BoxSpacer.small(),
                  ],
                ),
              ),
              title: Strings.basicInformations,
              onSave: () {},
            ),
            const BoxSpacer.small(),
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
                    BoxSpacer.small(),
                    CustomTextFormField(label: Strings.state),
                    BoxSpacer.small(),
                    CustomTextFormField(label: Strings.city),
                    BoxSpacer.small(),
                    CustomTextFormField(label: Strings.neighborhood),
                    BoxSpacer.small(),
                    CustomTextFormField(label: Strings.street),
                    BoxSpacer.small(),
                    CustomTextFormField(
                      label: Strings.number,
                      textInputType: TextInputType.number,
                    ),
                    BoxSpacer.small(),
                    CustomTextFormField(label: Strings.complement),
                    BoxSpacer.small(),
                  ],
                ),
              ),
            ),
            const BoxSpacer.small(),
            InformationCard(
              widget: Form(
                child: Column(
                  children: const [
                    CustomTextFormField(
                      label: Strings.phone,
                      textInputType: TextInputType.numberWithOptions(),
                    ),
                    BoxSpacer.small(),
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
                          DropdownMenuItem<String>(
                            value: 'InBank',
                            child: Text('InBank'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onSave: () {}),
            const BoxSpacer.small(),
            InformationCard(
                title: 'Outras informações',
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
                      BoxSpacer.small(),
                      CustomDropDown(items: [
                        DropdownMenuItem(
                          value: Strings.single,
                          child: Text(Strings.single),
                        ),
                        DropdownMenuItem(
                          value: Strings.married,
                          child: Text(Strings.married),
                        )
                      ], label: Strings.maritalStatus),
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
