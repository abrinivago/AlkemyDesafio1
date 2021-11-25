import UIKit


typealias Direccion = (ciudad: String, partido: String, provincia: String, calle: [String:Any], pais: String, codigoPostal: Int, piso: String?, departamento: String?)

let direccion1: Direccion = (
    ciudad: "Saenz Peña",
    partido: "Tres de Febrero",
    provincia: "Buenos Aires",
    calle: ["nombreDeCalle":"Mosconi",
            "numero": 3238,
            "entreCalle1":"Laje",
            "entreCalle2":"Estrada"],
    pais: "Argentina",
    codigoPostal: 1674,
    piso: "1",
    departamento: "A")

let direccion2: Direccion = (
    ciudad: "CABA",
    partido: "CABA",
    provincia: "Buenos Aires",
    calle: ["nombreDeCalle":"Pellegrini",
            "numero": 27,
            "entreCalle1":"Rivadavia",
            "entreCalle2":"Mitre"],
    pais: "Argentina",
    codigoPostal: 1009,
    piso: nil,
    departamento: nil)

let direccion3: Direccion = (
    ciudad: "CABA",
    partido: "CABA",
    provincia: "Buenos Aires",
    calle: ["nombreDeCalle":"Bahia Blanca",
            "numero": 4548,
            "entreCalle1":"Gabriela Mistral",
            "entreCalle2":"Joaquin"],
    pais: "Argentina",
    codigoPostal: 1429,
    piso: "240",
    departamento: "P")

func direccionTexto (datos : Direccion) -> String {
    return ("La dirección \(datos.calle["nombreDeCalle"] ?? "calle") \(datos.calle["numero"] ?? "numero") Piso: \(datos.piso ?? "-") Departamento: \(datos.departamento ?? "-"), entre \(datos.calle["entreCalle1"] ?? "Calle 1") y \(datos.calle["entreCalle2"] ?? "Calle 2") se encuentra en la ciudad de \(datos.ciudad),partido de \(datos.partido),provincia de \(datos.provincia) en \(datos.pais) \n")
}

print(direccionTexto(datos: direccion1))

print(direccionTexto(datos: direccion2))

print(direccionTexto(datos: direccion3))


func pisosDepartamentos (informacion : Direccion) -> String {
    if informacion.piso != nil || informacion.departamento != nil {
        return ("La dirección ingresada es un departamento en el piso \(informacion.piso ?? "-") depto \(informacion.departamento ?? "-")\n")
                } else{
            return ("Esta dirección no pertenece a un departamento\n")
        }
}

print(pisosDepartamentos(informacion: direccion1))

print(pisosDepartamentos(informacion: direccion2))

print(pisosDepartamentos(informacion: direccion3))


