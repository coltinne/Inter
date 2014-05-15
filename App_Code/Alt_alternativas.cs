﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Alternativa
/// </summary>
public class Alt_alternativas
{
    int _codigoAlternativa;
    string _alternativaAlternativa;
    double _pesoAlternativa;
    int _codigoPergunta;

    public Alt_alternativas(string alternativa, double pontos)
    {
        this._alternativaAlternativa = alternativa;
        this._pesoAlternativa = pontos;
    }

    public int CodigoPergunta
    {
        get { return _codigoPergunta; }
        set { _codigoPergunta = value; }
    }

    public double PesoAlternativa
    {
        get { return _pesoAlternativa; }
        set { _pesoAlternativa = value; }
    }

    public string AlternativaAlternativa
    {
        get { return _alternativaAlternativa; }
        set { _alternativaAlternativa = value; }
    }

    public int CodigoAlternativa
    {
        get { return _codigoAlternativa; }
        set { _codigoAlternativa = value; }
    }
}