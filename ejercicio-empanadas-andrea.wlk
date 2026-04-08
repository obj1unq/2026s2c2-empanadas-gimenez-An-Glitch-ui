//Escribir aqui los objetos
object galván {
  var sueldoFijo = 15000
  var deuda = 0
  var dinero = 0


method sueldo() {
  return sueldoFijo
}

method sueldo(nuevoSueldo) {   //...
  sueldoFijo = nuevoSueldo
}

method cobrar(){               //...
  sueldo = sueldo + self.sueldo  
}

method gastar(cuanto) {
  dinero = if (dinero < cuanto){
    deuda = deuda + (dinero - cuanto)     // dinero - cuanto sería la diferencia que queda al intentar hacer el gasto
  } else {
    dinero = dinero - cuanto
  }
}
method deuda() {
    return deuda
}

method cobraElMonto(monto) {
  if (monto > deuda) {
    dinero = dinero + (monto - deuda)   // si el monto cque cobró es más grande que su deuda, entonces paga la deuda y el resto
    deuda = 0                           // va al dinero que tiene
  } else {                              // 
      deuda = deuda - monto             // si la deuda es más chica que el monto que cobró, entonces se reduce la deuda y no le
  }                                     // queda nada para guardar en dinero
}

method dinero() {
    return dinero
} 

}

object baigorria {
  var cantidadDeEmpanadasVendidas = 0
  var totalCobrado = 0
  const ventaPorEmpanada = 15      // debería ser comisionPorEmpanadaVendida ya que se lo consideraría más como una comisión que por venta


method venderEmpanadas(cantidad) { 
  cantidadDeEmpanadasVendidas = cantidad + cantidadDeEmpanadasVendidas
}

method sueldo() { 
  return cantidadDeEmpanadasVendidas * ventaPorEmpanada 
}

//method montoACobrar(monto) {               no iría el parámetro de 'monto' ya que se puede usar el self para ahorrar ese parámetro
//  totalCobrado = monto + totalCobrado
method cobrar() {
  totalCobrado = self.sueldo + totalCobrado
  cantidadDeEmpanadasVendidas = 0 // reseteo de las ventas vendidas
  }

//method totalCobrado() { 
//  return totalCobrado 
//}

method cobrar(){               //...
  sueldo = sueldo + self.sueldo  
}

}


object gimenez {
  var fondoParaSueldos = 300000


method pagarA(empleado) {
  fondoParaSueldos = fondoParaSueldos - empleado.sueldo()
  empleado.cobrar()    //  tenés que dar el sueldo que cobraría el empleado dado, no solamente actualizar el fondo de gimenez
}
  
method fondoParaSueldos() { 
  return fondoParaSueldos 
}

}
