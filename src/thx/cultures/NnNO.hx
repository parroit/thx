package thx.cultures;

import thx.culture.Culture;

class NnNO extends Culture {
	function new() {
		language = thx.languages.No.language;
		name = "nn-NO";
		english = "Norwegian, Nynorsk (Norway)";
		native = "norsk, nynorsk (Noreg)";
		date = new thx.culture.core.DateTimeInfo(
			["januar", "februar", "mars", "april", "mai", "juni", "juli", "august", "september", "oktober", "november", "desember", ""],
			["jan", "feb", "mar", "apr", "mai", "jun", "jul", "aug", "sep", "okt", "nov", "des", ""],
			["søndag", "måndag", "tysdag", "onsdag", "torsdag", "fredag", "laurdag"],
			["sø", "må", "ty", "on", "to", "fr", "la"],
			["sø", "må", "ty", "on", "to", "fr", "la"],
			null,
			null,
			".",
			":",
			1,
			"%B %Y",
			"%e. %B",
			"%e. %B %Y",
			"%d.%m.%Y",
			"%a, %d %b %Y %H:%M:%S GMT",
			"%e. %B %Y %H:%M:%S",
			"%Y-%m-%d %H:%M:%SZ",
			"%Y-%m-%dT%H:%M:%S",
			"%H:%M:%S",
			"%H:%M");
		symbolNaN = "NaN";
		symbolPercent = "%";
		symbolPermille = "‰";
		signNeg = "-";
		signPos = "+";
		symbolNegInf = "-INF";
		symbolPosInf = "INF";
		number = new thx.culture.core.NumberInfo(2, ",", [3], " ", "-n", "n");
		currency = new thx.culture.core.NumberInfo(2, ",", [3], " ", "$ -n", "$ n");
		percent = new thx.culture.core.NumberInfo(2, ",", [3], " ", "-n %", "n %");
		pluralRule = 1;
		englishCurrency = "Norwegian Krone";
		nativeCurrency = "Norsk krone";
		currencySymbol = "kr";
		currencyIso = "NOK";
		englishRegion = "Norway";
		nativeRegion = "Noreg";
		iso2 = "NO";
		iso3 = "NOR";
		isMetric = false;
		Culture.add(this);
	}
	public static var culture(getCulture, null) : Culture; static function getCulture() { if(null == culture) culture = new NnNO(); return culture; }
	static function __init__() { getCulture(); }
}