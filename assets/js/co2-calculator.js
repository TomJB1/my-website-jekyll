input_wrapper = document.getElementById("date");
input = document.createElement("select");
input_wrapper.appendChild(input);
input.addEventListener("change", calculate);
output = document.getElementById("output");

data = { // https://gml.noaa.gov/ccgg/trends/gl_data.html
    1979:  336.85,
    1980:  338.91,
    1981:  340.11,
    1982:  340.85,
    1983:  342.53,
    1984:  344.07,
    1985:  345.54,
    1986:  346.97,
    1987:  348.68,
    1988:  351.16,
    1989:  352.79,
    1990:  354.06,
    1991:  355.39,
    1992:  356.09,
    1993:  356.83,
    1994:  358.33,
    1995:  360.17,
    1996:  361.93,
    1997:  363.04,
    1998:  365.70,
    1999:  367.79,
    2000:  368.96,
    2001:  370.57,
    2002:  372.58,
    2003:  375.14,
    2004:  376.95,
    2005:  378.98,
    2006:  381.15,
    2007:  382.90,
    2008:  385.02,
    2009:  386.50,
    2010:  388.75,
    2011:  390.62,
    2012:  392.65,
    2013:  395.40,
    2014:  397.34,
    2015:  399.65,
    2016:  403.07,
    2017:  405.22,
    2018:  407.61,
    2019:  410.07,
    2020:  412.44,
    2021:  414.70,
    2022:  417.08,
    2023:  419.35,
    2024:  422.77
}

function calculate()
{
    output.innerText = data[input.value];
}

for (let i = 1979; i < 2025; i++) {
    option = document.createElement("option");
    option.innerText = i;
    if(i==2007)
    {
        option.selected = true;
    }
    input.appendChild(option)
}
