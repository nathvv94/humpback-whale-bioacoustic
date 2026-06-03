#PROYECTO BALLENA JOROBADA

# Grabación 1 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena1.wav"
fin

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate
dur

fs = data@samp.rate
fs 

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 2 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena2.wav"
fin

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 3 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena3.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 4 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena4.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 5 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena5.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 6 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena6.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 7 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena7.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 8 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena8.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 9 -------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena9.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 10 ------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena10.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 11 ------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena11.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 12 ------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena12.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 13 ------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena13.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 14 ------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena14.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Grabación 15 ------------------------------------------------------------

library(tuneR, warn.conflicts = F, quietly = T) 

fin = "Raven Pro 1.6/ballenas/ballena15.wav"

data = readWave(fin)

snd = data@left

dur = length(snd)/data@samp.rate

fs = data@samp.rate

snd = snd - mean(snd)

plot(snd, type = 'l', xlab = 'Muestras', ylab = 'Amplitud')

# -------------------------
#Raven espectograma
# -------------------------
library(signal)
snd_seg <- snd

nfft=2048

window=2048

overlap=1536

win <- hanning(window)

spec <- specgram (
  x = snd_seg,
  n = nfft,
  Fs = fs,
  window = win,
  overlap = overlap )

P <- abs(spec$S)^2

P_dB <- 10*log10(P + 1e-12)

P_dB <- P_dB - max(P_dB)

P_dB[P_dB < -80] <- -80

image(
  x = spec$t,
  y = spec$f,
  z = t(P_dB),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)

freq_limit <- spec$f <= 4000

image(
  x = spec$t,
  y = spec$f[freq_limit],
  z = t(P_dB[freq_limit, ]),
  col = gray(seq(0,1,length=256)),
  xlab = "Tiempo (s)",
  ylab = "Frecuencia (Hz)",
  useRaster = TRUE)


# Data set unido ----------------------------------------------------------

library(tidyverse)

tabla1 <- read_delim( "Raven Pro 1.6/Selections/ballenas_table_selection/ballena1.Table.1.selections.txt",
  delim = "\t"
)

head (tabla1)

library(janitor)

tabla1 <- clean_names(tabla1)

names(tabla1)

ruta <- "Raven Pro 1.6/Selections/ballenas_table_selection/"

archivos <- list.files(
  path = ruta,
  pattern = ".txt$",
  full.names = TRUE
)

archivos

library(tidyverse)
library(janitor)

datos_ballenas <- archivos %>%
  map_df(~ read_delim(.x, delim = "\t") %>%
           clean_names() %>%
           mutate(grabacion = basename(.x)))

glimpse(datos_ballenas)

datos_limpios <- datos_ballenas %>%
  filter(view == "Spectrogram 1")

datos_limpios

glimpse(datos_limpios)

names(datos_limpios)


# Tiempo ------------------------------------------------------------------
#Características temporales del canto <- cómo es el sonido en duración.
#reportar: duración <-  promedio, mínima, máxima y desviación estándar
#cuánto duran típicamente las vocalizaciones 

datos_limpios$begin_time_s

datos_limpios$duracion <- (datos_limpios$end_time_s - 
                             datos_limpios$begin_time_s)

datos_limpios$freq_media <- (datos_limpios$high_freq_hz +
                               datos_limpios$low_freq_hz / 2)

head (datos_limpios)

duracion = (datos_limpios$end_time_s - datos_limpios$begin_time_s)

mean (datos_limpios$duracion) # promedio = 1.425539

min (datos_limpios$duracion) # mínimo = 0.5429337

max (datos_limpios$duracion) # máximo = 4.498594

sd(datos_limpios$duracion, na.rm = TRUE) # desviación estándar = 0.6885853

summary(datos_limpios$duracion)


# Frecuencia --------------------------------------------------------------
#Características espectrales <- describe qué tan agudo o grave es el sonido.
#reportar: promedio, rango y desviación estándar
#en qué rango frecuencial vocalizan las ballenas jorobadas

mean (datos_limpios$freq_media) # promedio = 1462.02

range (datos_limpios$freq_media) # rango = 298.4775 24000.0000

sd (datos_limpios$freq_media, na.rm = TRUE) # desviación estándar =  2503.801

summary(datos_limpios$center_freq_hz)


# Tipo de sonido ----------------------------------------------------------

table (datos_limpios$forma)


# Graficar ----------------------------------------------------------------

hist(datos_limpios$duracion,
     main = "Distribución de duración de cantos",
     xlab = "Duración (s)",
     ylab = "Frecuencia",
     breaks = 15)
#cuánto duran típicamente las vocalizaciones

hist(datos_limpios$center_freq_hz,
     main = "Distribución de frecuencia central",
     xlab = "Frecuencia (Hz)",
     ylab = "Frecuencia",
     breaks = 15)

freq_total <- c(datos_limpios$low_freq_hz, datos_limpios$high_freq_hz)

hist(freq_total,
     probability = TRUE,
     main = "Distribución del rango frecuencial total",
     xlab = "Frecuencia (Hz)",
     ylab = "Densidad",
     breaks = 20)

lines(density(freq_total), lwd = 2)
#rango frecuencial



conteo_formas <- table(datos_limpios$forma)
barplot(conteo_formas,
        main = "Tipos de vocalización",
        xlab = "Forma del canto",
        ylab = "Número de cantos")
#tipo de vocalización más común











