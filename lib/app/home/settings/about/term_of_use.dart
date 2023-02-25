import 'package:flutter/material.dart';

class TermUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Term of use"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Text(
                  "Terms and conditions",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                // Text(
                //   "Last updated: March 10, 2023",
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 18),
                // ),
                Divider(),
                Text(
                  "These terms and conditions (“Agreement”) set forth the  general terms and conditions of your use of the “Madceit” mobile application (“Mobile Application” or Service”) and any of its related products and services (collectively, "
                  'Services'
                  "). This Agreement is legally binding between you (“User”, “you” or "
                  'your'
                  ") and this Mobile Application developer (“Operator”, “we”, “us” or “our”. If you are entering into this agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this agreement, in which case the terms “User”, "
                  'you'
                  " or “your” shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this agreement, you must not accept this agreement and may not access and use the Mobile Application and Services. By accessing and using the Mobile Application and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services.",
                  style: TextStyle(color: Colors.black),
                ),
                Divider(),
                Text(
                  "Table of contents",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),

                Text(
                  "\n1. Accounts and membership\n" +
                      "2. Links to other resources\n" +
                      "3. Prohibited uses\n" +
                      "4. In app purchase And account Ownership\n" +
                      "5. Intellectual property rights\n" +
                      "6. Limitation of liability\n" +
                      "7. Severability\n" +
                      "8. Dispute resolution\n" +
                      "9. Changes and amendments\n" +
                      "10. Acceptance of these terms\n" +
                      "11. Contacting us",
                  style: TextStyle(color: Colors.black),
                ),
                Divider(),

                Text(
                  "Accounts and members!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "While using Our Service, We may ask You to provide Us with certain personally identifiable" +
                      "‘You must be at least 16 years of age to use the Mobile Application and Services. By using the Mobile Application and Services and by agreeing to this Agreement  you warrant and represent that you are at least 16 years of age." +
                      "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for al activities that occur under the account and any other actions taken in connection" +
                      "If you create an account in the Mobile Application, you are responsible for maintaining the security of your account and you are fully responsible for al activities that occur under the account and any other actions taken in connection with it. We may monitor and review new accounts before you may sign in and start using the Services. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized uses of your account or any other breaches of security. We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend, disable, or delete your account (or any part thereof) if we determine that  you have violated any provision of this Agreement or that your conduct or content would tend to damage our reputation and goodwill. if we delete your account for the foregoing reasons, you may not re-register for our Services. We may block your email address and Internet protocol address to prevent further registration.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                //Usage Data
                Divider(),
                Text(
                  "Links to other resources",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "Although the Mobile Application and Services may link to other resources (such as websites, mobile applications, etc.), we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked resource, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their resources. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any resource which you access through a link in the Mobile Application. Your linking to any other off-site resources is at your own risk.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),

                Divider(),
                Text(
                  "Prohibited uses",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "In addition to other terms as set forth in the Agreement, you are prohibited from using the Mobile Application and Services or Content: \n (a) for any unlawful purpose;\n (b) to solicit others to perform or participate in any unlawful acts;\n (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; \n(d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; \n(e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability;\n (f) to submit false or misleading information;\n (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Mobile Application and ‘Services, third party products and services, or the Internet;\n (h) to spam, phish, pharm, pretext, spider, crawl, or scrape; \n (i) for any obscene or immoral purpose; or\n (j) to interfere with or circumvent the security features of the Mobile Application and Services, third party products and services, or the Internet. We reserve the right to. terminate your use of the Mobile Application and Services for violating any of the prohibited uses.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "In app Purchase and Account Ownership",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "Use of In-App Purchases: The app may offer various products and services for purchase through in-app transactions. These transactions are processed by the UPIs.\n\nLicense to Use: Your purchase of any in-app product grants you a limited, non-exclusive, non-transferable license to use that product within the app. This license is subject to these terms and any additional terms that may be specified in connection with the product." +
                      "\n\nContent Ownership: All content, including but not limited to text, graphics, logos, and images, are the property of the app or its licensors and are protected by copyright, trademark, and other intellectual property laws." +
                      "\n\nChanges to Terms: The app reserves the right to change these terms and conditions at any time. Your continued use of the app following the posting of any changes constitutes your acceptance of those changes." +
                      "\n\nEntire Agreement: These terms constitute the entire agreement between you and the app and supersede all prior agreements and understandings, whether written or oral, relating to the subject matter of these terms.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Intellectual property rights",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "“intellectual Property Rights” means all present and future rights conferred by statute, common law or equity in or in relation to any copyright and related rights, trademarks, designs, patents, inventions, goodwill and the right to sue for passing off, rights to inventions, rights to use, and all other intellectual property rights, in each case whether registered or unregistered and including all applications and rights to apply for and be granted, rights to claim priority from, such rights and all similar or equivalent rights or forms of protection and any other results of intellectual activity which subsist or will subsist now or in the future in any part of the world. This Agreement does not transfer to you any intellectual property owned by the Operator or third parties, and all rights, titles, and interests in and to such property will remain (as between the parties) solely with the Operator. All trademarks, service marks, graphics and logos used in connection with the Mobile Application and Services, are trademarks or registered trademarks of the Operator or its licensors. Other trademarks, service marks, graphics and logos used in connection with the Mobile Application and Services may be the trademarks of other thitd parties. Your use of the Mobile Application and Services grants you no right or license to reproduce or otherwise use any of the Operator or third party trademarks.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Limitation of liability",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "To the fullest extent permitted by applicable law, in no event will the Operator, its affiliates, directors, officers, employees, agents, suppliers or licensors be liable to any person for any indirect, incidental, special, punitive, cover or consequential damages (including, without limitation, damages for lost profits, revenue, sales, goodwill, use of content, impact on business, business interruption, loss of anticipated savings, loss of business opportunity) however caused, under any theory of liability, including, without limitation, contract, tort, warranty, breach of statutory duty, negligence or otherwise, even if the liable party has been advised as to the possibility of such damages or could have foreseen such damages. To the maximum extent permitted by applicable law, the aggregate liability of the Operator and its affiliates, officers, employees, agents, suppliers and licensors relating to the services will be limited to an amount no greater than one dollar or any amounts actually paid in cash by you to the Operator for the prior one month period prior to the first event or occurrence giving rise to such liability The limitations and exclusions also apply if this remedy does not fully compensate you for any losses or fails of its essential purpose.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Severability",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "All rights and restrictions contained in this Agreement may be exercised and shall be applicable and binding only to the extent that they do not violate any applicable laws and are intended to be limited to the extent necessary so that they will not render this ‘Agreement illegal, invalid or unenforceable. If any provision or portion of any provision of this Agreement shall be held to be illegal, invalid or unenforceable by a court of competent jurisdiction, it is the intention of the parties that the remaining provisions or portions thereof shall constitute their agreement with respect to the subject matter hereof, and all such remaining provisions or portions thereof shall remain in full force and effect.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Dispute resolution",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "The formation, interpretation, and performance of this Agreement and any disputes arising out of it shall be governed by the substantive and procedural laws of Gujarat, India without regard to its rules on conflicts or choice of law and, to the extent applicable, the laws of India. The exclusive jurisdiction and venue for actions related to the subject matter hereof shall be the courts located in Gujarat, India, and you hereby submit to the personal jurisdiction of such courts. You hereby waive any right to a jury trial in any proceeding arising out of or related to this Agreement. The United Nations Convention on Contracts for the International Sale of Goods does not apply to this Agreement.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Changes and amendments",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "We reserve the right to modify this Agreement or its terms related to the Mobile Application and Services at any time at our discretion. When we do, we will revise the updated date at the bottom of this page. We may also provide notice to you in other ways at our discretion, such as through the contact information you have provided. An updated version of this Agreement will be effective immediately upon the posting of the revised Agreement unless otherwise specified. Your continued use of the Mobile Application and Services after the effective date of the revised Agreement (or such other act specified at that time) will constitute your consent to those changes.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Acceptance of these terms",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                Text(
                  "You acknowledge that you have read this Agreement and agree to all its terms and conditions. By accessing and using the Mobile Application and Services you agree to be bound by this Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized to access or use the Mobile Application and Services. This terms and conditions policy was created with the help of Website Policies.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Divider(),
                Text(
                  "Contacting us",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Divider(
                  height: 10,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                RichText(
                  text: TextSpan(
                    text:
                        'If you have any questions, concerns, or complaints regarding this Agreement, we encourage you to contact us using the details below:',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                          text: "\n\nmadgineersengg@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    ],
                  ),
                ),
                Divider(),

                Text(
                  "This document was last updated on March 10, 2023",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Madceit by Madgineers",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
