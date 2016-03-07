TAXES_RAW = %Q[
United Kingdom	UK 21%
Netherlands			NL 20%
Czech Republic	CZ 19%
Luxembourg			LU 25%
Germany					DE 20%
France					FR 20%
Italy						IT 25%
Spain						ES 19%
Poland					PL 21%
Romania					RO 20%
Belgium					BE 24%
Greece					EL 20%
Portugal				PT 23%
Hungary					HU 27%
Sweden					SE 23%
Austria					AT 22%
Bulgaria				BG 21%
Denmark					DK 21%
Finland					FI 17%
Slovakia				SK 18%
Ireland					IE 21%
Croatia					HR 23%
Lithuania				LT 23%
Slovenia				SI 24%
Latvia					LV 20%
Estonia					EE 22%
Cyprus					CY 21%
Malta						MT 20%]

TAXES = Hash[*(TAXES_RAW.split("\n")[1..-1].map{|s|
	r = s[-6..-2].split(' '); [r.first, r.last.to_f]}).flatten]

COUNTRIES = Hash[*(TAXES_RAW.split("\n")[1..-1].map{|s|
	r = s[0..-5].split("\t"); [r.first, r.last]}).flatten.reverse]

# DISCOUNTS: EUR amount, % discount
DISCOUNTS = {
	'STANDARD' => {50_000 => 15, 10_000 => 10, 7_000 => 7, 5_000 => 5, 1_000 => 3}
}
