
from core.commons import Utils


class DataInsertion:
    def __init__(self, connection):
        self.connection = connection

    def run(self, row):
        self.__insert_into_registro(row)
        self.__insert_into_paciente(row)
        self.__insert_into_dados_residencia(row)
        self.__insert_into_dados_clinicos(row)
        self.__insert_into_sinais_sintomas(row)
        self.__insert_into_fator_risco(row)
        self.__insert_into_mae_vacina(row)
        self.__insert_into_dados_atendimento(row)
        self.__insert_into_dados_lab(row)
        self.__insert_into_agente_et_antigenico(row)
        self.__insert_into_agente_et_rtpcr(row)
        self.__insert_into_teste_sorologico(row)

    def __insert_into_registro(self, row):
        dt_notific = Utils.convert_string_to_date(row.DT_NOTIFIC)
        sem_not = Utils.check_nullity_of_the_value(row.SEM_NOT)
        dt_sin_pri = Utils.convert_string_to_date(row.DT_SIN_PRI)
        sem_pri = Utils.check_nullity_of_the_value(row.SEM_PRI)
        sg_uf_not = Utils.check_nullity_of_the_value(row.SG_UF_NOT)
        id_regiona = Utils.check_nullity_of_the_value(row.ID_REGIONA)
        co_regiona = Utils.check_nullity_of_the_value(row.CO_REGIONA)
        id_municip = Utils.check_nullity_of_the_value(row.ID_MUNICIP)
        co_mun_not = Utils.check_nullity_of_the_value(row.CO_MUN_NOT)
        id_unidade = Utils.check_nullity_of_the_value(row.ID_UNIDADE)
        co_uni_not = Utils.check_nullity_of_the_value(row.CO_UNI_NOT)
        self.connection.execute(
            """INSERT INTO covid.registro (dt_notific, sem_not, dt_sin_pri, sem_pri, sg_uf_not, id_regiona, co_regiona, id_municip, co_mun_not, id_unidade, co_uni_not) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (dt_notific, sem_not, dt_sin_pri, sem_pri, sg_uf_not, id_regiona, co_regiona, id_municip, co_mun_not, id_unidade, co_uni_not)
        )

    def __insert_into_paciente(self, row):
        cs_sexo = Utils.check_nullity_of_the_value(row.CS_SEXO)
        dt_nasc = Utils.convert_string_to_date(row.DT_NASC)
        nu_idade_n = Utils.check_nullity_of_the_value(row.NU_IDADE_N)
        cod_idade = Utils.check_nullity_of_the_value(row.TP_IDADE)
        tp_idade = Utils.check_nullity_of_the_value(row.COD_IDADE)
        cs_gestant = Utils.check_nullity_of_the_value(row.CS_GESTANT)
        cs_raca = Utils.check_nullity_of_the_value(row.CS_RACA)
        cs_etinia = Utils.check_nullity_of_the_value(row.CS_ETINIA)
        cs_escol_n = Utils.check_nullity_of_the_value(row.CS_ESCOL_N)
        self.connection.execute(
            """INSERT INTO covid.paciente (cs_sexo, dt_nasc, nu_idade_n, cod_idade, tp_idade, cs_gestant, cs_raca, cs_etinia, cs_escol_n) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (cs_sexo, dt_nasc, nu_idade_n, cod_idade, tp_idade, cs_gestant, cs_raca, cs_etinia, cs_escol_n)
        )

    def __insert_into_dados_residencia(self, row):
        sg_uf = Utils.check_nullity_of_the_value(row.SG_UF)
        id_rg_resi = Utils.check_nullity_of_the_value(row.ID_RG_RESI)
        co_rg_resi = Utils.check_nullity_of_the_value(row.CO_RG_RESI)
        id_mn_resi = Utils.check_nullity_of_the_value(row.ID_MN_RESI)
        co_mun_res = Utils.check_nullity_of_the_value(row.CO_MUN_RES)
        cs_zona = Utils.check_nullity_of_the_value(row.CS_ZONA)
        id_pais = Utils.check_nullity_of_the_value(row.ID_PAIS)
        co_pais = Utils.check_nullity_of_the_value(row.CO_PAIS)
        self.connection.execute(
            """INSERT INTO covid.dados_residencia (sg_uf, id_rg_resi, co_rg_resi, id_mn_resi, co_mun_res, cs_zona, id_pais, co_pais) VALUES (%s, %s, %s, %s, %s, %s, %s, %s);""",
            (sg_uf, id_rg_resi, co_rg_resi, id_mn_resi, co_mun_res, cs_zona, id_pais, co_pais)
        )

    def __insert_into_dados_clinicos(self, row):
        histo_vgm = Utils.check_nullity_of_the_value(row.HISTO_VGM)
        pais_vgm = Utils.check_nullity_of_the_value(row.PAIS_VGM)
        co_ps_vgm = Utils.check_nullity_of_the_value(row.CO_PS_VGM)
        lo_ps_vgm = Utils.check_nullity_of_the_value(row.LO_PS_VGM)
        dt_vgm = Utils.convert_string_to_date(row.DT_VGM)
        dt_rt_vgm = Utils.convert_string_to_date(row.DT_RT_VGM)
        surto_sg = Utils.check_nullity_of_the_value(row.SURTO_SG)
        nosocomial = Utils.check_nullity_of_the_value(row.NOSOCOMIAL)
        ave_suino = Utils.check_nullity_of_the_value(row.AVE_SUINO)
        out_anim = Utils.check_nullity_of_the_value(row.OUT_ANIM)
        fator_risc = Utils.check_nullity_of_the_value(row.FATOR_RISC)
        vacina = Utils.check_nullity_of_the_value(row.VACINA)
        dt_ut_dose = Utils.convert_string_to_date(Utils.check_nullity_of_the_value(row.DT_UT_DOSE))
        self.connection.execute(
            """INSERT INTO covid.dados_clinicos (histo_vgm, pais_vgm, co_ps_vgm, lo_ps_vgm, dt_vgm, dt_rt_vgm, surto_sg, nosocomial, ave_suino, out_anim, fator_risc, vacina, dt_ut_dose) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (histo_vgm, pais_vgm, co_ps_vgm, lo_ps_vgm, dt_vgm, dt_rt_vgm, surto_sg, nosocomial, ave_suino, out_anim, fator_risc, vacina, dt_ut_dose)
        )

    def __insert_into_sinais_sintomas(self, row):
        febre = Utils.check_nullity_of_the_value(row.FEBRE)
        tosse = Utils.check_nullity_of_the_value(row.TOSSE)
        garganta = Utils.check_nullity_of_the_value(row.GARGANTA)
        dispneia = Utils.check_nullity_of_the_value(row.DISPNEIA)
        desc_resp = Utils.check_nullity_of_the_value(row.DESC_RESP)
        saturacao = Utils.check_nullity_of_the_value(row.SATURACAO)
        diarreia = Utils.check_nullity_of_the_value(row.DIARREIA)
        vomito = Utils.check_nullity_of_the_value(row.VOMITO)
        dor_abd = Utils.check_nullity_of_the_value(row.DOR_ABD)
        fadiga = Utils.check_nullity_of_the_value(row.FADIGA)
        perd_olft = Utils.check_nullity_of_the_value(row.PERD_OLFT)
        perd_pala = Utils.check_nullity_of_the_value(row.PERD_PALA)
        outro_sin = Utils.check_nullity_of_the_value(row.OUTRO_SIN)
        outro_des = Utils.check_nullity_of_the_value(row.OUTRO_DES)
        self.connection.execute(
            """INSERT INTO covid.sinais_sintomas (febre, tosse, garganta, dispneia, desc_resp, saturacao, diarreia, vomito, dor_abd, fadiga, perd_olft, perd_pala, outro_sin, outro_des) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (febre, tosse, garganta, dispneia, desc_resp, saturacao, diarreia, vomito, dor_abd, fadiga, perd_olft, perd_pala, outro_sin, outro_des)
        )

    def __insert_into_fator_risco(self, row):
        puerpera = Utils.check_nullity_of_the_value(row.PUERPERA)
        cardiopati = Utils.check_nullity_of_the_value(row.CARDIOPATI)
        hematologi = Utils.check_nullity_of_the_value(row.HEMATOLOGI)
        sind_down = Utils.check_nullity_of_the_value(row.SIND_DOWN)
        hepatica = Utils.check_nullity_of_the_value(row.HEPATICA)
        asma = Utils.check_nullity_of_the_value(row.ASMA)
        diabetes = Utils.check_nullity_of_the_value(row.DIABETES)
        neurologic = Utils.check_nullity_of_the_value(row.NEUROLOGIC)
        pneumopati = Utils.check_nullity_of_the_value(row.PNEUMOPATI)
        imunodepre = Utils.check_nullity_of_the_value(row.IMUNODEPRE)
        renal = Utils.check_nullity_of_the_value(row.RENAL)
        obesidade = Utils.check_nullity_of_the_value(row.OBESIDADE)
        obes_imc = Utils.check_nullity_of_the_value(row.OBES_IMC)
        out_morbi = Utils.check_nullity_of_the_value(row.OUT_MORBI)
        morb_desc = Utils.check_nullity_of_the_value(row.MORB_DESC)
        self.connection.execute(
            """INSERT INTO covid.fator_risco (puerpera, cardiopati, hematologi, sind_down, hepatica, asma, diabetes, neurologic, pneumopati, imunodepre, renal, obesidade, obes_imc,  out_morbi, morb_desc) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (puerpera, cardiopati, hematologi, sind_down, hepatica, asma, diabetes, neurologic, pneumopati, imunodepre, renal, obesidade, obes_imc,  out_morbi, morb_desc)
        )

    def __insert_into_mae_vacina(self, row):
        mae_vac = Utils.check_nullity_of_the_value(row.MAE_VAC)
        dt_vac_mae = Utils.convert_string_to_date(row.DT_VAC_MAE)
        m_amamenta = Utils.check_nullity_of_the_value(row.M_AMAMENTA)
        dt_doseuni = Utils.check_nullity_of_the_value(row.DT_DOSEUNI)
        dt_1_dose = Utils.convert_string_to_date(row.DT_1_DOSE)
        dt_2_dose = Utils.convert_string_to_date(row.DT_2_DOSE)
        self.connection.execute(
            """INSERT INTO covid.mae_vacina (mae_vac, dt_vac_mae, m_amamenta, dt_doseuni, dt_1_dose, dt_2_dose) VALUES (%s, %s, %s, %s, %s, %s);""",
            (mae_vac, dt_vac_mae, m_amamenta, dt_doseuni, dt_1_dose, dt_2_dose)
        )

    def __insert_into_dados_atendimento(self, row):
        antiviral = Utils.check_nullity_of_the_value(row.ANTIVIRAL)
        tp_antivir = Utils.check_nullity_of_the_value(row.TP_ANTIVIR)
        out_antiv = Utils.check_nullity_of_the_value(row.OUT_ANTIV)
        dt_antivir = Utils.convert_string_to_date(row.DT_ANTIVIR)
        hospital = Utils.check_nullity_of_the_value(row.HOSPITAL)
        dt_interna = Utils.convert_string_to_date(row.DT_INTERNA)
        sg_uf_inte = Utils.check_nullity_of_the_value(row.SG_UF_INTE)
        id_rg_inte = Utils.check_nullity_of_the_value(row.ID_RG_INTE)
        co_rg_inte = Utils.check_nullity_of_the_value(row.CO_RG_INTE)
        id_mn_inte = Utils.check_nullity_of_the_value(row.ID_MN_INTE)
        co_mu_inte = Utils.check_nullity_of_the_value(row.CO_MU_INTE)
        uti = Utils.check_nullity_of_the_value(row.UTI)
        dt_entuti = Utils.convert_string_to_date(row.DT_ENTUTI)
        dt_saiduti = Utils.convert_string_to_date(row.DT_SAIDUTI)
        suport_ven = Utils.check_nullity_of_the_value(row.SUPORT_VEN)
        raiox_res = Utils.check_nullity_of_the_value(row.RAIOX_RES)
        raiox_out = Utils.check_nullity_of_the_value(row.RAIOX_OUT)
        dt_raiox = Utils.convert_string_to_date(row.DT_RAIOX)
        tomo_res = Utils.check_nullity_of_the_value(row.TOMO_RES)
        tomo_out = Utils.check_nullity_of_the_value(row.TOMO_OUT)
        dt_tomo = Utils.convert_string_to_date(row.DT_TOMO)
        amostra = Utils.check_nullity_of_the_value(row.AMOSTRA)
        dt_coleta = Utils.convert_string_to_date(row.DT_COLETA)
        tp_amostra = Utils.check_nullity_of_the_value(row.TP_AMOSTRA)
        out_amost = Utils.check_nullity_of_the_value(row.OUT_AMOST)
        self.connection.execute(
            """INSERT INTO covid.dados_atendimento (antiviral, tp_antivir, out_antiv, dt_antivir, hospital, dt_interna, sg_uf_inte, id_rg_inte, co_rg_inte, id_mn_inte, co_mu_inte, uti, dt_entuti, dt_saiduti, suport_ven, raiox_res, raiox_out, dt_raiox, tomo_res, tomo_out, dt_tomo, amostra, dt_coleta, tp_amostra, out_amost) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (antiviral, tp_antivir, out_antiv, dt_antivir, hospital, dt_interna, sg_uf_inte, id_rg_inte, co_rg_inte, id_mn_inte, co_mu_inte, uti, dt_entuti, dt_saiduti, suport_ven, raiox_res, raiox_out, dt_raiox, tomo_res, tomo_out, dt_tomo, amostra, dt_coleta, tp_amostra, out_amost)
        )

    def __insert_into_dados_lab(self, row):
        tp_tes_an = Utils.check_nullity_of_the_value(row.TP_TES_AN)
        dt_res_an = Utils.convert_string_to_date(row.DT_RES_AN)
        res_an = Utils.check_nullity_of_the_value(row.RES_AN)
        pcr_resul = Utils.check_nullity_of_the_value(row.PCR_RESUL)
        dt_pcr = Utils.convert_string_to_date(row.DT_PCR)
        tp_am_sor = Utils.check_nullity_of_the_value(row.TP_AM_SOR)
        sor_out = Utils.check_nullity_of_the_value(row.SOR_OUT)
        self.connection.execute(
            """INSERT INTO covid.dados_lab (tp_tes_an, dt_res_an, res_an, pcr_resul, dt_pcr, tp_am_sor, sor_out) VALUES (%s, %s, %s, %s, %s, %s, %s);""",
            (tp_tes_an, dt_res_an, res_an, pcr_resul, dt_pcr, tp_am_sor, sor_out)
        )

    def __insert_into_agente_et_antigenico(self, row):
        pos_an_flu = Utils.check_nullity_of_the_value(row.POS_AN_FLU)
        tp_flu_an = Utils.check_nullity_of_the_value(row.TP_FLU_AN)
        pos_an_out = Utils.check_nullity_of_the_value(row.POS_AN_OUT)
        an_sars2 = Utils.check_nullity_of_the_value(row.AN_SARS2)
        an_vsr = Utils.check_nullity_of_the_value(row.AN_VSR)
        an_para1 = Utils.check_nullity_of_the_value(row.AN_PARA1)
        an_para2 = Utils.check_nullity_of_the_value(row.AN_PARA2)
        an_para3 = Utils.check_nullity_of_the_value(row.AN_PARA3)
        an_adeno = Utils.check_nullity_of_the_value(row.AN_ADENO)
        an_outro = Utils.check_nullity_of_the_value(row.AN_OUTRO)
        ds_an_out = Utils.check_nullity_of_the_value(row.DS_AN_OUT)
        self.connection.execute(
            """INSERT INTO covid.agente_et_antigenico (pos_an_flu, tp_flu_an, pos_an_out, an_sars2, an_vsr, an_para1, an_para2, an_para3, an_adeno, an_outro, ds_an_out) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (pos_an_flu, tp_flu_an, pos_an_out, an_sars2, an_vsr, an_para1, an_para2, an_para3, an_adeno, an_outro, ds_an_out)
        )

    def __insert_into_agente_et_rtpcr(self, row):
        pos_pcrflu = Utils.check_nullity_of_the_value(row.POS_PCRFLU)
        tp_flu_pcr = Utils.check_nullity_of_the_value(row.TP_FLU_PCR)
        pcr_fluasu = Utils.check_nullity_of_the_value(row.PCR_FLUASU)
        fluasu_out = Utils.check_nullity_of_the_value(row.FLUASU_OUT)
        pcr_flubli = Utils.check_nullity_of_the_value(row.PCR_FLUBLI)
        flubli_out = Utils.check_nullity_of_the_value(row.FLUBLI_OUT)
        pos_pcrout = Utils.check_nullity_of_the_value(row.POS_PCROUT)
        pcr_sars2 = Utils.check_nullity_of_the_value(row.PCR_SARS2)
        pcr_vsr = Utils.check_nullity_of_the_value(row.PCR_VSR)
        pcr_para1 = Utils.check_nullity_of_the_value(row.PCR_PARA1)
        pcr_para2 = Utils.check_nullity_of_the_value(row.PCR_PARA2)
        pcr_para3 = Utils.check_nullity_of_the_value(row.PCR_PARA3)
        pcr_para4 = Utils.check_nullity_of_the_value(row.PCR_PARA4)
        pcr_adeno = Utils.check_nullity_of_the_value(row.PCR_ADENO)
        pcr_metap = Utils.check_nullity_of_the_value(row.PCR_METAP)
        pcr_boca = Utils.check_nullity_of_the_value(row.PCR_BOCA)
        pcr_rino = Utils.check_nullity_of_the_value(row.PCR_RINO)
        pcr_outro = Utils.check_nullity_of_the_value(row.PCR_OUTRO)
        ds_pcr_out = Utils.check_nullity_of_the_value(row.DS_PCR_OUT)
        self.connection.execute(
            """INSERT INTO covid.agente_et_rtpcr (pos_pcrflu, tp_flu_pcr, pcr_fluasu, fluasu_out, pcr_flubli, flubli_out, pos_pcrout, pcr_sars2, pcr_vsr, pcr_para1, pcr_para2, pcr_para3, pcr_para4, pcr_adeno, pcr_metap, pcr_boca, pcr_rino, pcr_outro, ds_pcr_out) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""",
            (pos_pcrflu, tp_flu_pcr, pcr_fluasu, fluasu_out, pcr_flubli, flubli_out, pos_pcrout, pcr_sars2, pcr_vsr, pcr_para1, pcr_para2, pcr_para3, pcr_para4, pcr_adeno, pcr_metap, pcr_boca, pcr_rino, pcr_outro, ds_pcr_out)
        )

    def __insert_into_teste_sorologico(self, row):
        dt_co_sor = Utils.convert_string_to_date(row.DT_CO_SOR)
        tp_sor = Utils.check_nullity_of_the_value(row.TP_SOR)
        out_sor = Utils.check_nullity_of_the_value(row.OUT_SOR)
        sor_out = Utils.check_nullity_of_the_value(row.SOR_OUT)
        res_igg = Utils.check_nullity_of_the_value(row.RES_IGG)
        res_igm = Utils.check_nullity_of_the_value(row.RES_IGM)
        res_iga = Utils.check_nullity_of_the_value(row.RES_IGA)
        dt_res = Utils.convert_string_to_date(row.DT_RES)
        self.connection.execute(
            """INSERT INTO covid.teste_sorologico (dt_co_sor, tp_sor, out_sor, sor_out, res_igg, res_igm, res_iga, dt_res) VALUES (%s, %s, %s, %s, %s, %s, %s, %s);""",
            (dt_co_sor, tp_sor, out_sor, sor_out, res_igg, res_igm, res_iga, dt_res)
        )

