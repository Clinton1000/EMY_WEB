import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AlmView extends StatelessWidget {
  static String rout='AlmView';
  const AlmView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 10),
        child: SingleChildScrollView(
          child: HtmlWidget("""
          <!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>
    </title>
    <style>
          body {
              font-family: Calibri;
              font-size: 12pt
          }

          h2,
          h3,
          p {
              margin: 0pt
          }

          li {
              margin-top: 0pt;
              margin-bottom: 0pt
          }

          h2 {
              margin-top: 5pt;
              margin-bottom: 5pt;
              page-break-inside: auto;
              page-break-after: auto;
              font-family: 'Times New Roman';
              font-size: 18pt;
              font-weight: bold;
              color: #000000
          }

          h3 {
              margin-top: 5pt;
              margin-bottom: 5pt;
              page-break-inside: auto;
              page-break-after: auto;
              font-family: 'Times New Roman';
              font-size: 13.5pt;
              font-weight: bold;
              color: #000000
          }

          .list-item-2 {
              margin-top: 5pt;
              margin-bottom: 5pt;
              font-family: 'Times New Roman';
              font-size: 12pt
          }

          span.Heading2Char {
              font-family: 'Times New Roman';
              font-size: 18pt;
              font-weight: bold
          }

          span.Heading3Char {
              font-family: 'Times New Roman';
              font-size: 13.5pt;
              font-weight: bold
          }

          span.Strong {
              font-weight: bold
          }
    </style>
</head>

<body>
    <p style="margin-bottom:12pt; line-height:38.9pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.6pt;">Definition</span></strong></p>
    <ol style="margin:0pt; padding-left:0pt; list-style-type:lower-latin;">
          <li style="margin-top:6pt; margin-left:31.78pt; padding-left:4.22pt; background-color:#ffffff;"><strong>Money Laundering (ML):</strong><strong>&nbsp;</strong>means the process by which criminals attempt to conceal the origin and/or illegitimate ownership of property and assets that are the proceeds of criminal activities.</li>
          <li style="margin-top:6pt; margin-left:32.33pt; padding-left:3.67pt; background-color:#ffffff;"><strong>Terrorism Financing:</strong> includes both legitimate and illegitimate money characterised by concealment of the origin or intended criminal use of the funds.</li>
          <li style="margin-top:6pt; margin-left:31.1pt; padding-left:4.9pt; background-color:#ffffff;"><strong>Know Your Customer (KYC):</strong><strong>&nbsp;</strong>This entails obtaining and verifying customer identity, preservation of records of customers, mandatory disclosure of transactions to authorised statutory bodies.</li>
          <li style="margin-top:6pt; margin-left:32.33pt; padding-left:3.67pt; background-color:#ffffff;"><strong>Nigeria Financial Intelligence Unit (NFIU):</strong><strong>&nbsp;</strong>The Nigerian arm of the global Financial Intelligence Unit (FIU).</li>
          <li style="margin-top:6pt; margin-left:32pt; padding-left:4pt; background-color:#ffffff;"><strong>Politically Exposed Persons (PEPs):</strong> Individuals who have been entrusted with prominent public functions in any country. Generally presenting a higher risk for potential involvement in bribery and corruption by virtue of their position and the influence that they may hold.</li>
          <li style="margin-top:6pt; margin-left:29.69pt; padding-left:6.31pt; background-color:#ffffff;"><strong>Enterprise Risk management (ERM):</strong><strong>&nbsp;</strong>includes the methods and processes used by organisations to manage risks and seize opportunities related to achieving their objectives.</li>
          <li style="margin-top:6pt; margin-left:31.68pt; margin-bottom:14pt; padding-left:4.32pt; background-color:#ffffff;"><strong>Client:</strong><strong>&nbsp;</strong>includes any entity with a business relationship with the Company or any entity connected with a financial transaction that can pose significant reputational or other risks to the Company</li>
    </ol>
    <p style="margin-top:12pt; margin-bottom:12pt; line-height:30.25pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.3pt;">Policy mandate</span></strong></p>
    <p style="background-color:#ffffff;">This policy is connected to a more comprehensive in-house Anti-Money Laundering (AML), Know Your Customer (KYC) and the combating the Financing of Terrorism Policy (CFT). It sets out an abbreviated version of the guidelines for Changecollect (herein referred to as &lsquo;the Company&rsquo;) compliance with AML/CFT obligations under the law, as well as regulatory directives. It prevents any transaction that facilitates criminal activities.<br>&zwj;<br>Changecollect Ltd understands that it has a vital role in preventing criminals from using our services to facilitate money laundering and terrorist financing. We are committed to detecting and avoiding money laundering and will cooperate fully with the Regulators and Law Enforcement Agencies where necessary.</p>
    <p style="margin-top:12pt; margin-bottom:12pt; line-height:30.25pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.3pt;">Policy description</span></strong></p>
    <p style="line-height:18pt; background-color:#ffffff;">Money Laundering and financing terrorism are financial crimes with economic effects. This policy is to eradicate the adverse effects of criminal economic activity and promotes integrity and stability in financial markets. Compliance with this policy is also critical to preserving the Company&rsquo;s corporate integrity, reputation and operational efficiency.<br><br>The purpose of this Policy is;:</p>
    <ul style="margin:0pt; padding-left:0pt;">
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">To guide the standard of conduct and practice that Changecollect must follow in implementing the AML, KYC, and CFT regulations.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">To protect the Company against fraud, reputational and other financial market risks.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">To minimise the risks faced by the Company from proceeds of crime</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; margin-bottom:14pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">To prevent money laundering and establish ERM systems to monitor the Company&rsquo;s exposure to financial crime.</span></li>
    </ul>
    <p style="margin-top:12pt; margin-bottom:12pt; line-height:30.25pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.3pt;">Compliance with policy</span></strong></p>
    <p style="line-height:18pt; background-color:#ffffff;">The Company shall comply with the following:</p>
    <ul style="margin:0pt; padding-left:0pt;">
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Formulate and implement internal controls and other procedures that will deter criminals from using its facilities for money laundering and terrorist financing and ensure that its obligations under Nigerian and subsisting laws and Regulations are met.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Embark on Enterprise Risk Management (ERM) and maintain an ERM register</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Designate a Money Laundering Reporting Officer (MLRO) with the relevant competence and independence to implement the Company&rsquo;s AML/KYC compliance policy.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Comply with the Money Laundering (Prohibition) Act, the Money Laundering (Prohibition) (Amendment) Act (together, the Money Laundering Act) and the Economic and Financial Crimes Commission Act.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Identify and report any suspicious transactions from the criminal activities defined in AML/KYC Regulations.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Ensure the implementation of the AML/KYC Act requirements is not inhibited through the Company&rsquo;s Confidentiality Agreement or Policy.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Effectively communicate and raise staff awareness on AML/KYC issues</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; margin-bottom:14pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Establishing and maintaining a risk-based approach to assessing and managing money laundering and terrorist financing risks.</span></li>
    </ul>
    <p style="margin-top:12pt; margin-bottom:12pt; line-height:30.25pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.3pt;">Know your client</span></strong></p>
    <p style="line-height:18pt; background-color:#ffffff;">KYC is the due diligence that the Company must perform to identify their clients and ascertain relevant information before carrying out any financial businesses with them. The Company, in upholding its KYC policies, shall undertake the following:</p>
    <ul style="margin:0pt; padding-left:0pt;">
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Establishing and maintaining a risk-based approach to Customer Due Diligence (CDD), Enhanced Due Diligence (EDD), including customer identification, verification and KYC procedures.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Issue a KYC compliance form to clients.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Obtain the necessary documents and information from every client</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Report suspicious activities and transactions to the regulatory authorities</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Update client information as and when available</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Identify the client and verify the client&rsquo;s identity using reliable, independent source documents (e.g. passport data page, national ID card, voters card, utility bills stating their current postal address. e.t.c), data or information.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Verify the legal status of business names, incorporated trustees and companies with the Corporate Affairs Commission.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Refuse to transact business with &ldquo;shell companies&rdquo; as described under the International Conventions.</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; margin-bottom:14pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Conduct due diligence for higher-risk clients, business relationships or transactions including PEP, cross border transactions and business relationships.</span></li>
    </ul>
    <p style="margin-top:12pt; margin-bottom:12pt; line-height:30.25pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.3pt;">Record keeping and reporting</span></strong></p>
    <p style="line-height:18pt; background-color:#ffffff;">The Company shall keep the record of a customer&rsquo;s identification for at least six years after the closure of the account or the severance of relations with the customer.<br>&zwj;<br>Upon request by a regulatory or law enforcement agency, the Company shall make available records related to AML/CFT compliance or its clients as soon as possible from the date of the request.<br>&zwj;<br>If the company notices any illegal transaction, it shall:</p>
    <ul style="margin:0pt; padding-left:0pt;">
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Draw up a report on the identity of the principal and the beneficiary or beneficiaries;</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Take appropriate action to prevent the laundering of the proceeds of criminal conduct;</span></li>
          <li style="margin-top:6pt; margin-left:27.6pt; margin-bottom:14pt; padding-left:8.4pt; font-family:serif; font-size:10pt; background-color:#ffffff;"><span style="font-family:Calibri; font-size:12pt;">Send a copy of the report and action taken to the Nigerian Financial Intelligence Unit (NFIU);</span></li>
    </ul>
    <p style="margin-top:12pt; margin-bottom:12pt; line-height:30.25pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.3pt;">Politically Exposed Persons (PEPs)</span></strong></p>
    <p style="background-color:#ffffff;">Business relationships with family members or close associates of PEPs involve reputation risks similar to those PEPs themselves. The Company shall evaluate the risks to its business operations when dealing with PEPs.</p>
    <p style="margin-top:12pt; margin-bottom:12pt; line-height:30.25pt; background-color:#ffffff;"><strong><span style="font-size:18pt; letter-spacing:-0.3pt;">Sanctions</span></strong></p>
    <p style="background-color:#ffffff;">A breach of the AML/CFT is a severe offence and could lead to investigations, imposition of fines and criminal sanctions (including imprisonment)</p>
    <p>&nbsp;</p>
    <p style="bottom: 10px; right: 10px; position: absolute;"><a href="https://wordtohtml.net" target="_blank" style="font-size:11px; color: #d0d0d0;">Converted to HTML with WordToHTML.net</a></p>
</body>

</html>
          
          
          """),
        ),
      ),
    );
  }
}
