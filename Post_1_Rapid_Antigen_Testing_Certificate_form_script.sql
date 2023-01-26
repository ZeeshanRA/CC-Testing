INSERT INTO cc_assessment_template_type (Assessment_Template_Type_Id, Assessment_Template_Type_Name, Assessment_Template_Type_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	11, 
	'Rapid Antigen Testing Certificate Form', 
	'RATCF',
	11, 
	'430000000268', 
	TRUE
);





SELECT @assessmentTemplateId := MAX( Assessment_Template_Id ) FROM cc_assessment_template;
SET @assessmentTemplateId = @assessmentTemplateId + 1;
INSERT INTO cc_assessment_template (Assessment_Template_Id, Assessment_Template_Type_Id, Assessment_Template_Name, Assessment_Template_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	@assessmentTemplateId, 
	11, 
	'Patient Details', 
	'Patient Details', 
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
	11, 
	'Work Location', 
	'Work Location', 
	'Work Location', 
	'1', 
	TRUE, 
	'BLANK_1', 
	'1'
);






SET @assessmentTemplateId = @assessmentTemplateId + 1;
INSERT INTO cc_assessment_template (Assessment_Template_Id, Assessment_Template_Type_Id, Assessment_Template_Name, Assessment_Template_Code, Sort_Order, Organization_Id, Activated) VALUES 
(
	@assessmentTemplateId, 
	11, 
	'Test Details', 
	'Test Details', 
	'2', 
	'430000000268', 
	TRUE
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	11, 
	'Date', 
	'Date', 
	'Date', 
	'1', 
	TRUE, 
	'DATE', 
	'1'
);

SET @assessmentTemplateDetailId = @assessmentTemplateDetailId + 1;
INSERT INTO cc_assessment_template_detail (Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Sort_Order, Activated, Fill_Type, No_of_values) VALUES 
(
	@assessmentTemplateDetailId, 
	@assessmentTemplateId, 
	11, 
	'Result', 
	'Result', 
	'Result', 
	'2', 
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
	11, 
	'Result', 
	'Result', 
	'Result', 
	'Undetermined',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	11, 
	'Result', 
	'Result', 
	'Result', 
	'Negative',
	TRUE
);

SET @assessmentFieldOptionsId = @assessmentFieldOptionsId + 1;
INSERT INTO cc_assessment_field_options (Field_Option_Id, Assessment_Template_Detail_Id, Assessment_Template_Id, Assessment_Template_Type_Id, Field_Name, Field_Code, Field_Description, Field_Option, Activated) VALUES 
(
	@assessmentFieldOptionsId, 
	@assessmentTemplateDetailId,
	@assessmentTemplateId,
	11, 
	'Result', 
	'Result', 
	'Result', 
	'Positive',
	TRUE
);