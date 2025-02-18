CREATE TABLE IF NOT EXISTS cx_param_custom_speed_comm (
    ID_TCCP VARCHAR(15) NOT NULL,
    ID_PRODUIT VARCHAR(15) NOT NULL,
    ID_ENT VARCHAR(15),
    TYPE VARCHAR(10) NOT NULL,
    NB_ELEM VARCHAR(100) NOT NULL,
    TIME_IN_MILLISECONDS VARCHAR(100) NOT NULL
    );

CREATE TABLE IF NOT EXISTS cx_evenement (
    ROW_ID VARCHAR(15) NOT NULL,
    TCCP_ID VARCHAR(15) NOT NULL,
    PRODUIT_ID VARCHAR(15) NOT NULL,
    ENT_ID VARCHAR(100) NOT NULL,
    RU_ID VARCHAR(100) NOT NULL
    );

CREATE TABLE IF NOT EXISTS cx_releve_unit (
    ROW_ID VARCHAR(15) NOT NULL,
    TC VARCHAR(15) NOT NULL,
    PROD_ID VARCHAR(15) NOT NULL,
    ENT_ID VARCHAR(15) NOT NULL,
    LAST_UPD DATE NOT NULL,
    CNL_EMAIL_FLG VARCHAR(1) NOT NULL,
    STATUT_INTERNET VARCHAR(30) NOT NULL,
    CNL_SMS_FLG VARCHAR(1) NOT NULL,
    STATUT_SMS VARCHAR(30) NOT NULL
    );


INSERT INTO cx_param_custom_speed_comm VALUES ('CATITRES', 'PROD_XXX', 'ENT_XXX', 'MAIL',  '30', '1000');
INSERT INTO cx_param_custom_speed_comm VALUES ('CATITRES', 'PROD_XXX', 'ENT_XXX', 'SMS',  '20', '2000');
INSERT INTO cx_param_custom_speed_comm VALUES ('CATITRES', 'PROD_XXX', null, 'SMS',  '20', '2000');
INSERT INTO cx_param_custom_speed_comm VALUES ('CATITRES', 'PROD_XXX', null, 'MAIL',  '20', '2000');

INSERT INTO cx_evenement VALUES ('F3FE1', 'CATITRES', 'PROD_XXX', 'ENT_XXX', '401');
INSERT INTO cx_releve_unit VALUES ('401', 'CATITRES', 'PROD_XXX', 'ENT_XXX', 'Y', 'A_TRAITER', 'Y', 'A_TRAITER');

INSERT INTO cx_evenement VALUES ('F3FE2', 'CATITRES', 'PROD_XXX', 'ENT_XXX', '402');
INSERT INTO cx_releve_unit VALUES ('402', 'CATITRES', 'PROD_XXX', 'ENT_XXX', 'Y', 'A_TRAITER', 'Y', 'ENVOYE');

INSERT INTO cx_evenement VALUES ('F3FE3', 'CATITRES', 'PROD_XXX', 'ENT_XXX', '403');
INSERT INTO cx_releve_unit VALUES ('403', 'CATITRES', 'PROD_XXX', 'ENT_XXX', 'Y', 'ENVOYE', 'N', 'AUCUN');

INSERT INTO cx_evenement VALUES ('G3GE1', 'A-ESR', 'ENT_ZZZ', 'PROD_ZZZ', '501');
INSERT INTO cx_releve_unit VALUES ('501', 'A-ESR', 'ENT_ZZZ', 'PROD_ZZZ', 'Y', '', 'N', 'AUCUN');




COMMIT;