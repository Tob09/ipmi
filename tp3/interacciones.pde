
void cambiarOpacidadBlancos(int cantidad) {
  opacidadBlanco -= cantidad;
  if (opacidadBlanco < 0) {
    opacidadBlanco = 0;
  }
}


int calcularOpacidad(int numeroEntero) {
  return int(map(numeroEntero, 0, height, 255, 0));
}
