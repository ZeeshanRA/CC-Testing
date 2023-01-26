DELETE FROM cc_assessment_template_type WHERE Assessment_Template_Type_Id = '10';
DELETE FROM cc_assessment_template WHERE Assessment_Template_Type_Id = '10';
DELETE FROM cc_assessment_template_detail WHERE Assessment_Template_Type_Id = '10';
DELETE FROM cc_assessment_field_options WHERE Assessment_Template_Type_Id = '10';



INSERT INTO cc_assessment_template_type (Assessment_Template_Type_Id, Assessment_Template_Type_Name, Assessment_Template_Type_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	10, 
	'Dental Aesthetics', 
	'DA',
	10, 
	'430000000268', 
	TRUE
);

SELECT @assessmentTemplateId := MAX( Assessment_Template_Id ) FROM cc_assessment_template;
SET @assessmentTemplateId = @assessmentTemplateId + 1;
INSERT INTO cc_assessment_template (Assessment_Template_Id, Assessment_Template_Type_Id, Assessment_Template_Name, Assessment_Template_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	@assessmentTemplateId, 
	10, 
	'Medical History', 
	'Medical History', 
	'1', 
	'430000000268', 
	TRUE
);

SELECT @assessmentTemplateDetailId := MAX( Assessment_Template_Detail_Id ) FROM cc_assessment_template_detail;
SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Do you have any current health problems?', 
	'Do you have any current health problems?', 
	'Do you have any current health problems?', 
	'1', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SELECT @assessmentFieldOptionsId := MAX( Field_Option_Id ) FROM cc_assessment_field_options;
SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do you have any current health problems?', 
	'Do you have any current health problems?', 
	'Do you have any current health problems?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do you have any current health problems?', 
	'Do you have any current health problems?', 
	'Do you have any current health problems?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Diseases', 
	'Diseases', 
	'Diseases', 
	'2', 
	TRUE, 
	'MULTISELECTMENU', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Diseases', 
	'Diseases', 
	'Diseases', 
	'Diabetes', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Diseases', 
	'Diseases', 
	'Diseases', 
	'Hypertension', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Diseases', 
	'Diseases', 
	'Diseases', 
	'Renal Disease', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Diseases', 
	'Diseases', 
	'Diseases', 
	'Heart Disease', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Diseases', 
	'Diseases', 
	'Diseases', 
	'Stroke', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Are you under a Physician\'s care?', 
	'Are you under a Physician\'s care?', 
	'Are you under a Physician\'s care?', 
	'3', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you under a Physician\'s care?', 
	'Are you under a Physician\'s care?', 
	'Are you under a Physician\'s care?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you under a Physician\'s care?', 
	'Are you under a Physician\'s care?', 
	'Are you under a Physician\'s care?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'For What?', 
	'For What?', 
	'For What?', 
	'4', 
	TRUE, 
	'BLANK_1', 
	'1'
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'What medications are you currently taking?', 
	'What medications are you currently taking?', 
	'What medications are you currently taking?', 
	'5', 
	TRUE, 
	'BLANK_1', 
	'1'
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'6', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'History of COUGH, FLU or FEVER in past 14 days?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Have you ever had COVID-19?', 
	'Have you ever had COVID-19?', 
	'Have you ever had COVID-19?', 
	'7', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you ever had COVID-19?', 
	'Have you ever had COVID-19?', 
	'Have you ever had COVID-19?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you ever had COVID-19?', 
	'Have you ever had COVID-19?', 
	'Have you ever had COVID-19?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'If Yes, When?', 
	'If Yes, When?', 
	'If Yes, When?', 
	'8', 
	TRUE, 
	'BLANK_1', 
	'1'
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Have you gotten Vaccination against COVID-19?', 
	'Have you gotten Vaccination against COVID-19?', 
	'Have you gotten Vaccination against COVID-19?', 
	'9', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you gotten Vaccination against COVID-19?', 
	'Have you gotten Vaccination against COVID-19?', 
	'Have you gotten Vaccination against COVID-19?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you gotten Vaccination against COVID-19?', 
	'Have you gotten Vaccination against COVID-19?', 
	'Have you gotten Vaccination against COVID-19?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'10', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'Have you ever been diagnosed with hepatitis B or C?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'What medications are you allergic to?', 
	'What medications are you allergic to?', 
	'What medications are you allergic to?', 
	'11', 
	TRUE, 
	'BLANK_1', 
	'1'
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Are you allergic to latex?', 
	'Are you allergic to latex?', 
	'Are you allergic to latex?', 
	'12', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you allergic to latex?', 
	'Are you allergic to latex?', 
	'Are you allergic to latex?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you allergic to latex?', 
	'Are you allergic to latex?', 
	'Are you allergic to latex?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Are you allergic to penicillin (amoxicillin)?', 
	'Are you allergic to penicillin (amoxicillin)?', 
	'Are you allergic to penicillin (amoxicillin)?', 
	'13', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you allergic to penicillin (amoxicillin)?', 
	'Are you allergic to penicillin (amoxicillin)?', 
	'Are you allergic to penicillin (amoxicillin)?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you allergic to penicillin (amoxicillin)?', 
	'Are you allergic to penicillin (amoxicillin)?', 
	'Are you allergic to penicillin (amoxicillin)?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Have you had any surgery in past 5 years?', 
	'Have you had any surgery in past 5 years?', 
	'Have you had any surgery in past 5 years?', 
	'14', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you had any surgery in past 5 years?', 
	'Have you had any surgery in past 5 years?', 
	'Have you had any surgery in past 5 years?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you had any surgery in past 5 years?', 
	'Have you had any surgery in past 5 years?', 
	'Have you had any surgery in past 5 years?', 
	'Yes', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Approximate dates?', 
	'Approximate dates?', 
	'Approximate dates?', 
	'15', 
	TRUE, 
	'BLANK_1', 
	'1'
);









SET @assessmentTemplateId = @assessmentTemplateId + 1;
INSERT INTO cc_assessment_template (Assessment_Template_Id, Assessment_Template_Type_Id, Assessment_Template_Name, Assessment_Template_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	@assessmentTemplateId, 
	10, 
	'Medical History (FOR WOMEN ONLY)', 
	'Medical History (FOR WOMEN ONLY)', 
	'2', 
	'430000000268', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Are you pregnant?', 
	'Are you pregnant?', 
	'Are you pregnant?', 
	'1', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you pregnant?', 
	'Are you pregnant?', 
	'Are you pregnant?', 
	'No', 
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you pregnant?', 
	'Are you pregnant?', 
	'Are you pregnant?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'If so, due date', 
	'If so, due date', 
	'If so, due date', 
	'2', 
	TRUE, 
	'DATE', 
	'1'
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'If so, are under physician\'s care?', 
	'If so, are under physician\'s care?', 
	'If so, are under physician\'s care?', 
	'3', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'If so, are under physician\'s care?', 
	'If so, are under physician\'s care?', 
	'If so, are under physician\'s care?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'If so, are under physician\'s care?', 
	'If so, are under physician\'s care?', 
	'If so, are under physician\'s care?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Are you nursing?', 
	'Are you nursing?', 
	'Are you nursing?', 
	'4', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you nursing?', 
	'Are you nursing?', 
	'Are you nursing?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you nursing?', 
	'Are you nursing?', 
	'Are you nursing?', 
	'Yes',
	TRUE
);







SET @assessmentTemplateId = @assessmentTemplateId + 1;
INSERT INTO cc_assessment_template (Assessment_Template_Id, Assessment_Template_Type_Id, Assessment_Template_Name, Assessment_Template_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	@assessmentTemplateId, 
	10, 
	'Dental History', 
	'Dental	History', 
	'3', 
	'430000000268', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Are you having dental pain?', 
	'Are you having dental pain?', 
	'Are you having dental pain?', 
	'1', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you having dental pain?', 
	'Are you having dental pain?', 
	'Are you having dental pain?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Are you having dental pain?', 
	'Are you having dental pain?', 
	'Are you having dental pain?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Missing teeth?', 
	'Missing teeth?', 
	'Missing teeth?', 
	'2', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Missing teeth?', 
	'Missing teeth?', 
	'Missing teeth?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Missing teeth?', 
	'Missing teeth?', 
	'Missing teeth?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Do your gums bleed when brushing?', 
	'Do your gums bleed when brushing?', 
	'Do your gums bleed when brushing?', 
	'3', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do your gums bleed when brushing?', 
	'Do your gums bleed when brushing?', 
	'Do your gums bleed when brushing?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do your gums bleed when brushing?', 
	'Do your gums bleed when brushing?', 
	'Do your gums bleed when brushing?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Have you had Braces in the past?', 
	'Have you had Braces in the past?', 
	'Have you had Braces in the past?', 
	'4', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you had Braces in the past?', 
	'Have you had Braces in the past?', 
	'Have you had Braces in the past?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Have you had Braces in the past?', 
	'Have you had Braces in the past?', 
	'Have you had Braces in the past?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'5', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'Do you use cigars, Cigarettes or Chew tobacco?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Do you brush regularly?', 
	'Do you brush regularly?', 
	'Do you brush regularly?', 
	'6', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do you brush regularly?', 
	'Do you brush regularly?', 
	'Do you brush regularly?', 
	'No',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'Do you brush regularly?', 
	'Do you brush regularly?', 
	'Do you brush regularly?', 
	'Yes',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Date of last dental cleaning', 
	'Date of last dental cleaning', 
	'Date of last dental cleaning', 
	'7', 
	TRUE, 
	'DATE', 
	'1'
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Main Complaint', 
	'Main Complaint', 
	'Main Complaint', 
	'8', 
	TRUE, 
	'BLANK_1', 
	'1'
);










SET @assessmentTemplateId = @assessmentTemplateId + 1;
INSERT INTO cc_assessment_template (Assessment_Template_Id, Assessment_Template_Type_Id, Assessment_Template_Name, Assessment_Template_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	@assessmentTemplateId, 
	10, 
	'Other Information', 
	'Other Information', 
	'4', 
	'430000000268', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'1', 
	TRUE, 
	'DROPDOWN', 
	'1'
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'Facebook',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'Instagram',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'YouTube',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'Google',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	10, 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'How do you know about dental Aesthetics?', 
	'Referral',
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	10, 
	'Date', 
	'Date', 
	'Date', 
	'2', 
	TRUE, 
	'DATE', 
	'1'
);