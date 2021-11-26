DROP SCHEMA IF EXISTS  covid CASCADE;

CREATE SCHEMA covid;

CREATE SEQUENCE covid.teste_sorologico_teste_sorologico_pk_seq;

CREATE TABLE covid.teste_sorologico (
                teste_sorologico_pk INTEGER NOT NULL DEFAULT nextval('covid.teste_sorologico_teste_sorologico_pk_seq'),
                dt_co_sor DATE,
                tp_sor VARCHAR,
                out_sor VARCHAR,
                sor_out VARCHAR,
                res_igg VARCHAR,
                res_igm VARCHAR,
                res_iga VARCHAR,
                dt_res DATE,
                CONSTRAINT teste_sorologico_pk PRIMARY KEY (teste_sorologico_pk)
);


ALTER SEQUENCE covid.teste_sorologico_teste_sorologico_pk_seq OWNED BY covid.teste_sorologico.teste_sorologico_pk;

CREATE SEQUENCE covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq;

CREATE TABLE covid.agente_et_rtpcr (
                agente_et_rtpcr_pk INTEGER NOT NULL DEFAULT nextval('covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq'),
                pos_pcrflu VARCHAR,
                tp_flu_pcr VARCHAR,
                pcr_fluasu VARCHAR,
                fluasu_out VARCHAR,
                pcr_flubli VARCHAR,
                flubli_out VARCHAR,
                pos_pcrout VARCHAR,
                pcr_sars2 VARCHAR,
                pcr_vsr VARCHAR,
                pcr_para1 VARCHAR,
                pcr_para2 VARCHAR,
                pcr_para3 VARCHAR,
                pcr_para4 VARCHAR,
                pcr_adeno VARCHAR,
                pcr_metap VARCHAR,
                pcr_boca VARCHAR,
                pcr_rino VARCHAR,
                pcr_outro VARCHAR,
                ds_pcr_out VARCHAR,
                CONSTRAINT agente_et_rtpcr_fk PRIMARY KEY (agente_et_rtpcr_pk)
);


ALTER SEQUENCE covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq OWNED BY covid.agente_et_rtpcr.agente_et_rtpcr_pk;

CREATE SEQUENCE covid.agente_et_antigenico_agente_et_antigenico_pk_seq;

CREATE TABLE covid.agente_et_antigenico (
                agente_et_antigenico_pk INTEGER NOT NULL DEFAULT nextval('covid.agente_et_antigenico_agente_et_antigenico_pk_seq'),
                pos_an_flu VARCHAR,
                tp_flu_an VARCHAR,
                pos_an_out VARCHAR,
                an_sars2 VARCHAR,
                an_vsr VARCHAR,
                an_para1 VARCHAR,
                an_para2 VARCHAR,
                an_para3 VARCHAR,
                an_adeno VARCHAR,
                an_outro VARCHAR,
                ds_an_out VARCHAR,
                CONSTRAINT agente_et_antigenico_pk PRIMARY KEY (agente_et_antigenico_pk)
);


ALTER SEQUENCE covid.agente_et_antigenico_agente_et_antigenico_pk_seq OWNED BY covid.agente_et_antigenico.agente_et_antigenico_pk;

CREATE SEQUENCE covid.dados_lab_dados_lab_pk_seq;

CREATE TABLE covid.dados_lab (
                dados_lab_pk INTEGER NOT NULL DEFAULT nextval('covid.dados_lab_dados_lab_pk_seq'),
                tp_tes_an VARCHAR,
                dt_res_an DATE,
                res_an VARCHAR,
                pcr_resul VARCHAR,
                dt_pcr DATE,
                tp_am_sor VARCHAR,
                sor_out VARCHAR,
                CONSTRAINT dados_lab_pk PRIMARY KEY (dados_lab_pk)
);


ALTER SEQUENCE covid.dados_lab_dados_lab_pk_seq OWNED BY covid.dados_lab.dados_lab_pk;

CREATE SEQUENCE covid.dados_atendimento_dados_atendimento_pk_seq;

CREATE TABLE covid.dados_atendimento (
                dados_atendimento_pk INTEGER NOT NULL DEFAULT nextval('covid.dados_atendimento_dados_atendimento_pk_seq'),
                antiviral VARCHAR,
                tp_antivir VARCHAR,
                out_antiv VARCHAR,
                dt_antivir DATE,
                hospital VARCHAR,
                dt_interna DATE,
                sg_uf_inte VARCHAR,
                id_rg_inte VARCHAR,
                co_rg_inte VARCHAR,
                id_mn_inte VARCHAR,
                co_mu_inte VARCHAR,
                uti VARCHAR,
                dt_entuti DATE,
                dt_saiduti DATE,
                suport_ven VARCHAR,
                raiox_res VARCHAR,
                raiox_out VARCHAR,
                dt_raiox DATE,
                tomo_res VARCHAR,
                tomo_out VARCHAR,
                dt_tomo DATE,
                amostra VARCHAR,
                dt_coleta DATE,
                tp_amostra VARCHAR,
                out_amost VARCHAR,
                CONSTRAINT dados_atendimento_pk PRIMARY KEY (dados_atendimento_pk)
);


ALTER SEQUENCE covid.dados_atendimento_dados_atendimento_pk_seq OWNED BY covid.dados_atendimento.dados_atendimento_pk;

CREATE SEQUENCE covid.mae_vacina_mae_vacina_pk_seq;

CREATE TABLE covid.mae_vacina (
                mae_vacina_pk INTEGER NOT NULL DEFAULT nextval('covid.mae_vacina_mae_vacina_pk_seq'),
                mae_vac VARCHAR,
                dt_vac_mae DATE,
                m_amamenta VARCHAR,
                dt_doseuni DATE,
                dt_1_dose DATE,
                dt_2_dose DATE,
                CONSTRAINT mae_vacina_pk PRIMARY KEY (mae_vacina_pk)
);


ALTER SEQUENCE covid.mae_vacina_mae_vacina_pk_seq OWNED BY covid.mae_vacina.mae_vacina_pk;

CREATE SEQUENCE covid.fator_risco_fator_risco_pk_seq;

CREATE TABLE covid.fator_risco (
                fator_risco_pk INTEGER NOT NULL DEFAULT nextval('covid.fator_risco_fator_risco_pk_seq'),
                puerpera VARCHAR,
                cardiopati VARCHAR,
                hematologi VARCHAR,
                sind_down VARCHAR,
                hepatica VARCHAR,
                asma VARCHAR,
                diabetes VARCHAR,
                neurologic VARCHAR,
                pneumopati VARCHAR,
                imunodepre VARCHAR,
                renal VARCHAR,
                obesidade VARCHAR,
                obes_imc VARCHAR,
                out_morbi VARCHAR,
                morb_desc VARCHAR,
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
                CONSTRAINT paciente_pk PRIMARY KEY (paciente_pk)
);

ALTER SEQUENCE covid.paciente_paciente_pk_seq OWNED BY covid.paciente.paciente_pk;

CREATE SEQUENCE covid.conclusao_conclusao_pk_seq;

CREATE TABLE covid.conclusao (
                conclusao_pk INTEGER NOT NULL DEFAULT nextval('covid.conclusao_conclusao_pk_seq'),
                classi_fin VARCHAR,
                classi_out VARCHAR,
                criterio VARCHAR,
                evolucao VARCHAR,
                dt_evoluca DATE,
                dt_encerra DATE,
                dt_digita DATE,
                CONSTRAINT conclusao_pk PRIMARY KEY (conclusao_pk)
);

ALTER SEQUENCE covid.conclusao_conclusao_pk_seq OWNED BY covid.conclusao.conclusao_pk;
