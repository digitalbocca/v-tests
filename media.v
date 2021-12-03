import os

fn media(a f64, b f64) f64 {
	return (a + b) / 2
}

fn answer(ammount i64) f64 {
  mut notes := []i64{}
	for i in 0 .. ammount {
		display_index := i + 1
    notes.prepend(os.input('Digite a nota $display_index: ').i64())
	}
	return media(notes[0], notes[1])
}

fn ammount() i64 {
	return os.input('Digite a quantidade de notas: ').i64()
}

fn main() {
	println('CALCULO DE MEDIA')
	println(answer(ammount()))
}
