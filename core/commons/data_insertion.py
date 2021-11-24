
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

