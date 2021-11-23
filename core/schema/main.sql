CREATE SCHEMA IF NOT EXISTS covid;

CREATE SEQUENCE IF NOT EXISTS covid.teste_sorologico_teste_sorologico_pk_seq;

CREATE TABLE IF NOT EXISTS covid.teste_sorologico (
                teste_sorologico_pk VARCHAR NOT NULL DEFAULT nextval('covid.teste_sorologico_teste_sorologico_pk_seq'),
                dt_co_sor DATE NOT NULL,
                tp_sor VARCHAR(3) NOT NULL,
                out_sor VARCHAR(100) NOT NULL,
                sor_out VARCHAR(100) NOT NULL,
                res_sor VARCHAR(1) NOT NULL,
                res_igg VARCHAR(1) NOT NULL,
                res_igm VARCHAR(1) NOT NULL,
                res_iga VARCHAR(1) NOT NULL,
                dt_res DATE NOT NULL,
                CONSTRAINT teste_sorologico_pk PRIMARY KEY (teste_sorologico_pk)
);


ALTER SEQUENCE covid.teste_sorologico_teste_sorologico_pk_seq OWNED BY covid.teste_sorologico.teste_sorologico_pk;

CREATE SEQUENCE IF NOT EXISTS covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq;

CREATE TABLE IF NOT EXISTS covid.agente_et_rtpcr (
                agente_et_rtpcr_pk VARCHAR NOT NULL DEFAULT nextval('covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq'),
                pos_pcrflu VARCHAR(1) NOT NULL,
                tp_flu_pcr VARCHAR(1) NOT NULL,
                pcr_fluasu VARCHAR(1) NOT NULL,
                fluasu_out VARCHAR(30) NOT NULL,
                pcr_flubli VARCHAR(1) NOT NULL,
                flubli_out VARCHAR(30) NOT NULL,
                pos_pcrout VARCHAR(1) NOT NULL,
                pcr_sars2 VARCHAR(1) NOT NULL,
                pcr_vsr VARCHAR(1) NOT NULL,
                pcr_para1 VARCHAR(1) NOT NULL,
                pcr_para2 VARCHAR(1) NOT NULL,
                pcr_para3 VARCHAR(1) NOT NULL,
                pcr_para4 VARCHAR(1) NOT NULL,
                pcr_adeno VARCHAR(1) NOT NULL,
                pcr_metap VARCHAR(1) NOT NULL,
                pcr_boca VARCHAR(1) NOT NULL,
                pcr_rino VARCHAR(1) NOT NULL,
                pcr_outro VARCHAR(1) NOT NULL,
                ds_pcr_out VARCHAR(30) NOT NULL,
                CONSTRAINT agente_et_rtpcr_fk PRIMARY KEY (agente_et_rtpcr_pk)
);


ALTER SEQUENCE covid.agente_et_rtpcr_agente_et_rtpcr_pk_seq OWNED BY covid.agente_et_rtpcr.agente_et_rtpcr_pk;

CREATE SEQUENCE IF NOT EXISTS covid.agente_et_antigenico_agente_et_antigenico_seq;

CREATE TABLE IF NOT EXISTS covid.agente_et_antigenico (
                agente_et_antigenico VARCHAR NOT NULL DEFAULT nextval('covid.agente_et_antigenico_agente_et_antigenico_seq'),
                pos_an_flu VARCHAR(1) NOT NULL,
                tp_flu_an VARCHAR(1) NOT NULL,
                pos_an_out VARCHAR(1) NOT NULL,
                an_sars2 VARCHAR(1) NOT NULL,
                an_vsr VARCHAR(1) NOT NULL,
                an_para1 VARCHAR(1) NOT NULL,
                an_para2 VARCHAR(1) NOT NULL,
                an_para3 VARCHAR(1) NOT NULL,
                an_adeno VARCHAR(1) NOT NULL,
                an_outro VARCHAR(1) NOT NULL,
                ds_an_out VARCHAR(30) NOT NULL,
                CONSTRAINT agente_et_antigenico_pk PRIMARY KEY (agente_et_antigenico)
);


ALTER SEQUENCE covid.agente_et_antigenico_agente_et_antigenico_seq OWNED BY covid.agente_et_antigenico.agente_et_antigenico;

CREATE SEQUENCE IF NOT EXISTS covid.dados_lab_dados_lab_pk_seq;

CREATE TABLE IF NOT EXISTS covid.dados_lab (
                dados_lab_pk VARCHAR NOT NULL DEFAULT nextval('covid.dados_lab_dados_lab_pk_seq'),
                rec_gal VARCHAR(20) NOT NULL,
                tp_tes_an VARCHAR(3) NOT NULL,
                dt_res_an DATE NOT NULL,
                res_an VARCHAR(1) NOT NULL,
                lab_an VARCHAR(70) NOT NULL,
                co_lab_an VARCHAR(7) NOT NULL,
                pcr_resul VARCHAR(1) NOT NULL,
                dt_pcr DATE NOT NULL,
                lab_pcr VARCHAR(7) NOT NULL,
                co_lab_pcr VARCHAR(7) NOT NULL,
                tp_am_sor VARCHAR(3) NOT NULL,
                sor_out VARCHAR(30) NOT NULL,
                CONSTRAINT dados_lab_pk PRIMARY KEY (dados_lab_pk)
);


ALTER SEQUENCE covid.dados_lab_dados_lab_pk_seq OWNED BY covid.dados_lab.dados_lab_pk;

CREATE SEQUENCE IF NOT EXISTS covid.dados_atendimento_dados_atendimento_pk_seq;

CREATE TABLE IF NOT EXISTS covid.dados_atendimento (
                dados_atendimento_pk VARCHAR NOT NULL DEFAULT nextval('covid.dados_atendimento_dados_atendimento_pk_seq'),
                antiviral VARCHAR(1) NOT NULL,
                tp_antivir VARCHAR(1) NOT NULL,
                out_antiv VARCHAR(30) NOT NULL,
                dt_antivir DATE NOT NULL,
                hospital VARCHAR(1) NOT NULL,
                dt_interna DATE NOT NULL,
                sg_uf_inte VARCHAR(2) NOT NULL,
                id_rg_inte VARCHAR(6) NOT NULL,
                co_rg_inte VARCHAR(6) NOT NULL,
                id_mn_inte VARCHAR(20) NOT NULL,
                co_mu_inte VARCHAR(20) NOT NULL,
                id_un_inte VARCHAR(20) NOT NULL,
                co_un_inte VARCHAR(20) NOT NULL,
                uti VARCHAR(1) NOT NULL,
                dt_entuti DATE NOT NULL,
                dt_saiduti DATE NOT NULL,
                suport_ven VARCHAR(1) NOT NULL,
                raiox_res VARCHAR(1) NOT NULL,
                raiox_out VARCHAR(30) NOT NULL,
                dt_raiox DATE NOT NULL,
                tomo_res VARCHAR(3) NOT NULL,
                tomo_out VARCHAR(100) NOT NULL,
                dt_tomo DATE NOT NULL,
                amostra VARCHAR(1) NOT NULL,
                dt_coleta DATE NOT NULL,
                tp_amostra VARCHAR(30) NOT NULL,
                out_amost VARCHAR(30) NOT NULL,
                CONSTRAINT dados_atendimento_pk PRIMARY KEY (dados_atendimento_pk)
);


ALTER SEQUENCE covid.dados_atendimento_dados_atendimento_pk_seq OWNED BY covid.dados_atendimento.dados_atendimento_pk;

CREATE SEQUENCE IF NOT EXISTS covid.mae_vacina_mae_vacina_pk_seq;

CREATE TABLE IF NOT EXISTS covid.mae_vacina (
                mae_vacina_pk VARCHAR NOT NULL DEFAULT nextval('covid.mae_vacina_mae_vacina_pk_seq'),
                mae_vac VARCHAR(1) NOT NULL,
                dt_vac_mae DATE NOT NULL,
                m_amamenta VARCHAR(1) NOT NULL,
                dt_doseuni DATE NOT NULL,
                dt_1_dose DATE NOT NULL,
                dt_2_dose DATE NOT NULL,
                CONSTRAINT mae_vacina_pk PRIMARY KEY (mae_vacina_pk)
);


ALTER SEQUENCE covid.mae_vacina_mae_vacina_pk_seq OWNED BY covid.mae_vacina.mae_vacina_pk;

CREATE SEQUENCE IF NOT EXISTS covid.fator_risco_fator_risco_pk_seq;

CREATE TABLE IF NOT EXISTS covid.fator_risco (
                fator_risco_pk VARCHAR NOT NULL DEFAULT nextval('covid.fator_risco_fator_risco_pk_seq'),
                puerpera VARCHAR(1) NOT NULL,
                cardiopati VARCHAR(1) NOT NULL,
                hematologi VARCHAR(1) NOT NULL,
                sind_down VARCHAR(1) NOT NULL,
                hepatica VARCHAR(1) NOT NULL,
                asma VARCHAR(1) NOT NULL,
                diabetes VARCHAR(1) NOT NULL,
                neurologic VARCHAR(1) NOT NULL,
                pneumopati VARCHAR(1) NOT NULL,
                imunodepre VARCHAR(1) NOT NULL,
                renal VARCHAR(1) NOT NULL,
                obesidade VARCHAR(1) NOT NULL,
                obes_imc VARCHAR(3) NOT NULL,
                out_morbi VARCHAR(1) NOT NULL,
                morb_desc VARCHAR(30) NOT NULL,
                CONSTRAINT fator_risco_pk PRIMARY KEY (fator_risco_pk)
);


ALTER SEQUENCE covid.fator_risco_fator_risco_pk_seq OWNED BY covid.fator_risco.fator_risco_pk;

CREATE SEQUENCE IF NOT EXISTS covid.sinais_sintomas_sinais_sintomas_pk_seq;

CREATE TABLE IF NOT EXISTS covid.sinais_sintomas (
                sinais_sintomas_pk VARCHAR NOT NULL DEFAULT nextval('covid.sinais_sintomas_sinais_sintomas_pk_seq'),
                febre VARCHAR(1) NOT NULL,
                tosse VARCHAR(1) NOT NULL,
                garganta VARCHAR(1) NOT NULL,
                dispneia VARCHAR(1) NOT NULL,
                desc_resp VARCHAR(1) NOT NULL,
                saturacao VARCHAR(1) NOT NULL,
                diarreia VARCHAR(1) NOT NULL,
                vomito VARCHAR(1) NOT NULL,
                dor_abd VARCHAR(1) NOT NULL,
                fadiga VARCHAR(1) NOT NULL,
                perd_olft VARCHAR(1) NOT NULL,
                perd_pala VARCHAR(1) NOT NULL,
                outro_sim VARCHAR(1) NOT NULL,
                outro_des VARCHAR(30) NOT NULL,
                CONSTRAINT sinais_sintomas_pk PRIMARY KEY (sinais_sintomas_pk)
);


ALTER SEQUENCE covid.sinais_sintomas_sinais_sintomas_pk_seq OWNED BY covid.sinais_sintomas.sinais_sintomas_pk;

CREATE SEQUENCE IF NOT EXISTS covid.dados_clinicos_dados_clinicos_pk_seq;

CREATE TABLE IF NOT EXISTS covid.dados_clinicos (
                dados_clinicos_pk VARCHAR NOT NULL DEFAULT nextval('covid.dados_clinicos_dados_clinicos_pk_seq'),
                histo_vgm VARCHAR(1) NOT NULL,
                pais_vgm VARCHAR(3) NOT NULL,
                co_ps_vgm VARCHAR(3) NOT NULL,
                lo_ps_vgm VARCHAR(30) NOT NULL,
                dt_vgm DATE NOT NULL,
                dt_rt_vgm DATE NOT NULL,
                surto_sg VARCHAR(1) NOT NULL,
                nosocomial VARCHAR(1) NOT NULL,
                ave_suino VARCHAR(1) NOT NULL,
                out_anim VARCHAR(60) NOT NULL,
                fator_risc VARCHAR(1) NOT NULL,
                vacina VARCHAR(1) NOT NULL,
                dt_ut_dose DATE NOT NULL,
                CONSTRAINT dados_clinicos_pk PRIMARY KEY (dados_clinicos_pk)
);


ALTER SEQUENCE covid.dados_clinicos_dados_clinicos_pk_seq OWNED BY covid.dados_clinicos.dados_clinicos_pk;

CREATE SEQUENCE IF NOT EXISTS covid.dados_residencia_dados_residencia_pk_seq;

CREATE TABLE IF NOT EXISTS covid.dados_residencia (
                dados_residencia_pk VARCHAR NOT NULL DEFAULT nextval('covid.dados_residencia_dados_residencia_pk_seq'),
                nu_cep VARCHAR(8) NOT NULL,
                sg_uf VARCHAR(2) NOT NULL,
                id_rg_resi VARCHAR(6) NOT NULL,
                co_rg_resi VARCHAR(6) NOT NULL,
                id_mn_resi VARCHAR(6) NOT NULL,
                co_mun_res VARCHAR(6) NOT NULL,
                mn_bairro VARCHAR(72) NOT NULL,
                mn_logrado VARCHAR(50) NOT NULL,
                nu_numero VARCHAR(8) NOT NULL,
                nm_complem VARCHAR(15) NOT NULL,
                nu_ddd_tel VARCHAR(4) NOT NULL,
                nu_telefon VARCHAR(10) NOT NULL,
                cs_zona VARCHAR(1) NOT NULL,
                id_pais VARCHAR(3) NOT NULL,
                co_pais VARCHAR(3) NOT NULL,
                CONSTRAINT dados_residencia_pk PRIMARY KEY (dados_residencia_pk)
);


ALTER SEQUENCE covid.dados_residencia_dados_residencia_pk_seq OWNED BY covid.dados_residencia.dados_residencia_pk;

CREATE TABLE IF NOT EXISTS covid.paciente (
                nu_cpf VARCHAR(15) NOT NULL,
                nm_pacient VARCHAR(70) NOT NULL,
                cs_sexo VARCHAR(1) NOT NULL,
                dt_nasc DATE NOT NULL,
                nm_idade_n VARCHAR(3) NOT NULL,
                tp_idade VARCHAR(1) NOT NULL,
                cs_gestant VARCHAR(1) NOT NULL,
                cs_raca VARCHAR(2) NOT NULL,
                cs_etinia VARCHAR(4) NOT NULL,
                cs_escol_n VARCHAR(1) NOT NULL,
                pac_cocbo VARCHAR(6) NOT NULL,
                pac_dscbo VARCHAR(6) NOT NULL,
                nm_mae_pac VARCHAR(70) NOT NULL,
                CONSTRAINT nu_cpf PRIMARY KEY (nu_cpf)
);


CREATE TABLE IF NOT EXISTS covid.registro (
                nu_notific VARCHAR(12) NOT NULL,
                dt_notific DATE NOT NULL,
                sem_not VARCHAR(6) NOT NULL,
                dt_sin_pri DATE NOT NULL,
                sem_pri VARCHAR(6) NOT NULL,
                sg_uf_not VARCHAR(2) NOT NULL,
                id_municip VARCHAR(6) NOT NULL,
                co_mun_not VARCHAR(6) NOT NULL,
                id_regiona VARCHAR(6) NOT NULL,
                co_regiona VARCHAR(6) NOT NULL,
                id_unidade VARCHAR(7) NOT NULL,
                co_uni_not VARCHAR(7) NOT NULL,
                CONSTRAINT nu_notific PRIMARY KEY (nu_notific)
);