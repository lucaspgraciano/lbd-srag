DROP SCHEMA IF EXISTS  covid CASCADE;

CREATE SCHEMA covid;

CREATE SEQUENCE covid.teste_sorologico_teste_sorologico_pk_seq;

CREATE TABLE covid.teste_sorologico (
                teste_sorologico_pk INTEGER NOT NULL DEFAULT nextval('covid.teste_sorologico_teste_sorologico_pk_seq'),
                dt_co_sor DATE,
                tp_sor VARCHAR(3),
                out_sor VARCHAR(100),
                sor_out VARCHAR(100),
                res_igg VARCHAR(1),
                res_igm VARCHAR(1),
                res_iga VARCHAR(1),
                dt_res DATE,
                CONSTRAINT teste_sorologico_pk PRIMARY KEY (teste_sorologico_pk)
);


ALTER SEQUENCE covid.teste_sorologico_teste_sorologico_pk_seq OWNED BY covid.teste_sorologico.teste_sorologico_pk;

CREATE SEQUENCE covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq;

CREATE TABLE covid.agente_et_rtpcr (
                agente_et_rtpcr_pk INTEGER NOT NULL DEFAULT nextval('covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq'),
                pos_pcrflu VARCHAR(1),
                tp_flu_pcr VARCHAR(1),
                pcr_fluasu VARCHAR(1),
                fluasu_out VARCHAR(30),
                pcr_flubli VARCHAR(1),
                flubli_out VARCHAR(30),
                pos_pcrout VARCHAR(1),
                pcr_sars2 VARCHAR(1),
                pcr_vsr VARCHAR(1),
                pcr_para1 VARCHAR(1),
                pcr_para2 VARCHAR(1),
                pcr_para3 VARCHAR(1),
                pcr_para4 VARCHAR(1),
                pcr_adeno VARCHAR(1),
                pcr_metap VARCHAR(1),
                pcr_boca VARCHAR(1),
                pcr_rino VARCHAR(1),
                pcr_outro VARCHAR(1),
                ds_pcr_out VARCHAR(30),
                CONSTRAINT agente_et_rtpcr_fk PRIMARY KEY (agente_et_rtpcr_pk)
);


ALTER SEQUENCE covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq OWNED BY covid.agente_et_rtpcr.agente_et_rtpcr_pk;

CREATE SEQUENCE covid.agente_et_antigenico_agente_et_antigenico_pk_seq;

CREATE TABLE covid.agente_et_antigenico (
                agente_et_antigenico_pk INTEGER NOT NULL DEFAULT nextval('covid.agente_et_antigenico_agente_et_antigenico_pk_seq'),
                pos_an_flu VARCHAR(1),
                tp_flu_an VARCHAR(1),
                pos_an_out VARCHAR(1),
                an_sars2 VARCHAR(1),
                an_vsr VARCHAR(1),
                an_para1 VARCHAR(1),
                an_para2 VARCHAR(1),
                an_para3 VARCHAR(1),
                an_adeno VARCHAR(1),
                an_outro VARCHAR(1),
                ds_an_out VARCHAR(30),
                CONSTRAINT agente_et_antigenico_pk PRIMARY KEY (agente_et_antigenico_pk)
);


ALTER SEQUENCE covid.agente_et_antigenico_agente_et_antigenico_pk_seq OWNED BY covid.agente_et_antigenico.agente_et_antigenico_pk;

CREATE SEQUENCE covid.dados_lab_dados_lab_pk_seq;

CREATE TABLE covid.dados_lab (
                dados_lab_pk INTEGER NOT NULL DEFAULT nextval('covid.dados_lab_dados_lab_pk_seq'),
                tp_tes_an VARCHAR(3),
                dt_res_an DATE,
                res_an VARCHAR(1),
                pcr_resul VARCHAR(1),
                dt_pcr DATE,
                tp_am_sor VARCHAR(3),
                sor_out VARCHAR(30),
                agente_et_antigenico_pk INTEGER,
                agente_et_rtpcr_pk INTEGER,
                teste_sorologico_pk INTEGER,
                CONSTRAINT dados_lab_pk PRIMARY KEY (dados_lab_pk)
);


ALTER SEQUENCE covid.dados_lab_dados_lab_pk_seq OWNED BY covid.dados_lab.dados_lab_pk;

CREATE SEQUENCE covid.dados_atendimento_dados_atendimento_pk_seq;

CREATE TABLE covid.dados_atendimento (
                dados_atendimento_pk INTEGER NOT NULL DEFAULT nextval('covid.dados_atendimento_dados_atendimento_pk_seq'),
                antiviral VARCHAR(1),
                tp_antivir VARCHAR(1),
                out_antiv VARCHAR(30),
                dt_antivir DATE,
                hospital VARCHAR(1),
                dt_interna DATE,
                sg_uf_inte VARCHAR(2),
                id_rg_inte VARCHAR(6),
                co_rg_inte VARCHAR(6),
                id_mn_inte VARCHAR(20),
                co_mu_inte VARCHAR(20),
                uti VARCHAR(1),
                dt_entuti DATE,
                dt_saiduti DATE,
                suport_ven VARCHAR(1),
                raiox_res VARCHAR(1),
                raiox_out VARCHAR(30),
                dt_raiox DATE,
                tomo_res VARCHAR(3),
                tomo_out VARCHAR(100),
                dt_tomo DATE,
                amostra VARCHAR(1),
                dt_coleta DATE,
                tp_amostra VARCHAR(30),
                out_amost VARCHAR(30),
                CONSTRAINT dados_atendimento_pk PRIMARY KEY (dados_atendimento_pk)
);


ALTER SEQUENCE covid.dados_atendimento_dados_atendimento_pk_seq OWNED BY covid.dados_atendimento.dados_atendimento_pk;

CREATE SEQUENCE covid.mae_vacina_mae_vacina_pk_seq;

CREATE TABLE covid.mae_vacina (
                mae_vacina_pk INTEGER NOT NULL DEFAULT nextval('covid.mae_vacina_mae_vacina_pk_seq'),
                mae_vac VARCHAR(1),
                dt_vac_mae DATE,
                m_amamenta VARCHAR(1),
                dt_doseuni DATE,
                dt_1_dose DATE,
                dt_2_dose DATE,
                CONSTRAINT mae_vacina_pk PRIMARY KEY (mae_vacina_pk)
);


ALTER SEQUENCE covid.mae_vacina_mae_vacina_pk_seq OWNED BY covid.mae_vacina.mae_vacina_pk;

CREATE SEQUENCE covid.fator_risco_fator_risco_pk_seq;

CREATE TABLE covid.fator_risco (
                fator_risco_pk INTEGER NOT NULL DEFAULT nextval('covid.fator_risco_fator_risco_pk_seq'),
                puerpera VARCHAR(1),
                cardiopati VARCHAR(1),
                hematologi VARCHAR(1),
                sind_down VARCHAR(1),
                hepatica VARCHAR(1),
                asma VARCHAR(1),
                diabetes VARCHAR(1),
                neurologic VARCHAR(1),
                pneumopati VARCHAR(1),
                imunodepre VARCHAR(1),
                renal VARCHAR(1),
                obesidade VARCHAR(1),
                obes_imc VARCHAR(3),
                out_morbi VARCHAR(1),
                morb_desc VARCHAR(30),
                CONSTRAINT fator_risco_pk PRIMARY KEY (fator_risco_pk)
);


ALTER SEQUENCE covid.fator_risco_fator_risco_pk_seq OWNED BY covid.fator_risco.fator_risco_pk;

CREATE SEQUENCE covid.sinais_sintomas_sinais_sintomas_pk_seq;

CREATE TABLE covid.sinais_sintomas (
                sinais_sintomas_pk INTEGER NOT NULL DEFAULT nextval('covid.sinais_sintomas_sinais_sintomas_pk_seq'),
                febre VARCHAR,
                tosse VARCHAR,
                garganta VARCHAR,
                dispneia VARCHAR,
                desc_resp VARCHAR,
                saturacao VARCHAR,
                diarreia VARCHAR,
                vomito VARCHAR,
                dor_abd VARCHAR,
                fadiga VARCHAR,
                perd_olft VARCHAR,
                perd_pala VARCHAR,
                outro_sin VARCHAR,
                outro_des VARCHAR,
                CONSTRAINT sinais_sintomas_pk PRIMARY KEY (sinais_sintomas_pk)
);


ALTER SEQUENCE covid.sinais_sintomas_sinais_sintomas_pk_seq OWNED BY covid.sinais_sintomas.sinais_sintomas_pk;

CREATE SEQUENCE covid.dados_clinicos_dados_clinicos_pk_seq;

CREATE TABLE covid.dados_clinicos (
                dados_clinicos_pk INTEGER NOT NULL DEFAULT nextval('covid.dados_clinicos_dados_clinicos_pk_seq'),
                histo_vgm VARCHAR,
                pais_vgm VARCHAR,
                co_ps_vgm VARCHAR,
                lo_ps_vgm VARCHAR,
                dt_vgm DATE,
                dt_rt_vgm DATE,
                surto_sg VARCHAR,
                nosocomial VARCHAR,
                ave_suino VARCHAR,
                out_anim VARCHAR,
                fator_risc VARCHAR,
                vacina VARCHAR,
                dt_ut_dose DATE,
                sinais_sintomas_pk INTEGER,
                mae_vacina_pk INTEGER,
                fator_risco_pk INTEGER,
                CONSTRAINT dados_clinicos_pk PRIMARY KEY (dados_clinicos_pk)
);


ALTER SEQUENCE covid.dados_clinicos_dados_clinicos_pk_seq OWNED BY covid.dados_clinicos.dados_clinicos_pk;

CREATE SEQUENCE covid.dados_residencia_dados_residencia_pk_seq;

CREATE TABLE covid.dados_residencia (
                dados_residencia_pk INTEGER NOT NULL DEFAULT nextval('covid.dados_residencia_dados_residencia_pk_seq'),
                sg_uf VARCHAR,
                id_rg_resi VARCHAR,
                co_rg_resi VARCHAR,
                id_mn_resi VARCHAR,
                co_mun_res VARCHAR,
                cs_zona VARCHAR,
                id_pais VARCHAR,
                co_pais VARCHAR,
                CONSTRAINT dados_residencia_pk PRIMARY KEY (dados_residencia_pk)
);


ALTER SEQUENCE covid.dados_residencia_dados_residencia_pk_seq OWNED BY covid.dados_residencia.dados_residencia_pk;

CREATE SEQUENCE covid.registro_registro_pk_seq;

CREATE TABLE covid.registro (
                registro_pk INTEGER NOT NULL DEFAULT nextval('covid.registro_registro_pk_seq'),
                dt_notific DATE,
                sem_not VARCHAR,
                dt_sin_pri DATE,
                sem_pri VARCHAR,
                sg_uf_not VARCHAR,
                id_regiona VARCHAR,
                co_regiona VARCHAR,
                id_municip VARCHAR,
                co_mun_not VARCHAR,
                id_unidade VARCHAR,
                co_uni_not VARCHAR,
                CONSTRAINT registro_pk PRIMARY KEY (registro_pk)
);


ALTER SEQUENCE covid.registro_registro_pk_seq OWNED BY covid.registro.registro_pk;

CREATE SEQUENCE covid.paciente_paciente_pk_seq;

CREATE TABLE covid.paciente (
                paciente_pk INTEGER NOT NULL DEFAULT nextval('covid.paciente_paciente_pk_seq'),
                cs_sexo VARCHAR,
                dt_nasc DATE,
                nu_idade_n VARCHAR,
                cod_idade VARCHAR,
                tp_idade VARCHAR,
                cs_gestant VARCHAR,
                cs_raca VARCHAR,
                cs_etinia VARCHAR,
                cs_escol_n VARCHAR,
                registro_pk INTEGER,
                dados_residencia_pk INTEGER,
                dados_clinicos_pk INTEGER,
                dados_lab_pk INTEGER,
                dados_atendimento_pk INTEGER,
                CONSTRAINT paciente_pk PRIMARY KEY (paciente_pk)
);


ALTER SEQUENCE covid.paciente_paciente_pk_seq OWNED BY covid.paciente.paciente_pk;

ALTER TABLE covid.dados_lab ADD CONSTRAINT teste_sorologico_dados_lab_fk
FOREIGN KEY (teste_sorologico_pk)
REFERENCES covid.teste_sorologico (teste_sorologico_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.dados_lab ADD CONSTRAINT agente_et_rtpcr_dados_lab_fk
FOREIGN KEY (agente_et_rtpcr_pk)
REFERENCES covid.agente_et_rtpcr (agente_et_rtpcr_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.dados_lab ADD CONSTRAINT agente_et_antigenico_dados_lab_fk
FOREIGN KEY (agente_et_antigenico_pk)
REFERENCES covid.agente_et_antigenico (agente_et_antigenico_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.paciente ADD CONSTRAINT dados_lab_paciente_fk
FOREIGN KEY (dados_lab_pk)
REFERENCES covid.dados_lab (dados_lab_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.paciente ADD CONSTRAINT dados_atendimento_paciente_fk
FOREIGN KEY (dados_atendimento_pk)
REFERENCES covid.dados_atendimento (dados_atendimento_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.dados_clinicos ADD CONSTRAINT mae_vacina_dados_clinicos_fk
FOREIGN KEY (mae_vacina_pk)
REFERENCES covid.mae_vacina (mae_vacina_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.dados_clinicos ADD CONSTRAINT fator_risco_dados_clinicos_fk
FOREIGN KEY (fator_risco_pk)
REFERENCES covid.fator_risco (fator_risco_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.dados_clinicos ADD CONSTRAINT sinais_sintomas_dados_clinicos_fk
FOREIGN KEY (sinais_sintomas_pk)
REFERENCES covid.sinais_sintomas (sinais_sintomas_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.paciente ADD CONSTRAINT dados_clinicos_paciente_fk
FOREIGN KEY (dados_clinicos_pk)
REFERENCES covid.dados_clinicos (dados_clinicos_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.paciente ADD CONSTRAINT dados_residencia_paciente_fk
FOREIGN KEY (dados_residencia_pk)
REFERENCES covid.dados_residencia (dados_residencia_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE covid.paciente ADD CONSTRAINT registro_paciente_fk
FOREIGN KEY (registro_pk)
REFERENCES covid.registro (registro_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;