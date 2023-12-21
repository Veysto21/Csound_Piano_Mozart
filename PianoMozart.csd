<CsoundSynthesizer>
<CsOptions>
-odac     ; use the Csound audio driver
; -iadc    ; use the Csound MIDI driver
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
    iamp = p4
    idur = p3
    ipitch = cpspch(p5)

    ; Envelope
	 kenv linsegr 0, 0.01, 1, idur - 0.02, 0.5, 0.01, 0.01  ; Added release segment

    ; Generate a piano-like waveform using a modified GEN10 function
    asig pluck kenv * iamp, ipitch, ipitch, 0, 1

    ; Output
    outs asig, asig
endin

</CsInstruments>
<CsScore>
; Five-bar piece with added rhythm
i 1 0 0.25 0.3 7.00  ; Bar 1, Note: B4
i 1 0.25 0.125 0.3 7.02  ; Eighth note
i 1 0.375 0.125 0.3 7.04  ; Eighth note
i 1 0.5 0.25 0.3 7.05  ; Quarter note
i 1 0.75 0.125 0.3 7.06  ; Eighth note
i 1 0.875 0.125 0.3 7.08  ; Eighth note
i 1 1 0.25 0.3 7.09  ; Quarter note
i 1 1.25 0.125 0.3 7.11  ; Eighth note
i 1 1.375 0.125 0.3 7.00  ; Eighth note 

i 1 2 0.25 0.3 7.07  ; Bar 2, Note: A4
i 1 2.25 0.125 0.3 7.05  ; Eighth note
i 1 2.375 0.125 0.3 7.04  ; Eighth note
i 1 2.5 0.25 0.3 7.02  ; Quarter note
i 1 2.75 0.125 0.3 7.01  ; Eighth note 
i 1 2.875 0.125 0.3 6.11  ; Eighth note
i 1 3 0.25 0.3 6.09  ; Quarter note
i 1 3.25 0.125 0.3 6.07  ; Eighth note
i 1 3.375 0.125 0.3 6.00  ; Eighth note 

i 1 4 0.25 0.3 7.00  ; Bar 3, Note: G4
i 1 4.25 0.125 0.3 6.11  ; Eighth note
i 1 4.375 0.125 0.3 6.09  ; Eighth note
i 1 4.5 0.25 0.3 6.07  ; Quarter note
i 1 4.75 0.125 0.3 6.06  ; Eighth note 
i 1 4.875 0.125 0.3 6.04  ; Eighth note
i 1 5 0.25 0.3 6.02  ; Quarter note
i 1 5.25 0.125 0.3 6.00  ; Eighth note
i 1 5.375 0.125 0.3 6.11  ; Eighth note 

i 1 6 0.25 0.3 6.05  ; Bar 4, Note: F4
i 1 6.25 0.125 0.3 6.04  ; Eighth note
i 1 6.375 0.125 0.3 6.02  ; Eighth note
i 1 6.5 0.25 0.3 6.00  ; Quarter note
i 1 6.75 0.125 0.3 5.11  ; Eighth note
i 1 6.875 0.125 0.3 5.09  ; Eighth note
i 1 7 0.25 0.3 5.07  ; Quarter note
i 1 7.25 0.125 0.3 5.05  ; Eighth note 
i 1 7.375 0.125 0.3 5.03  ; Eighth note

i 1 8 1 0.3 7.00  ; Bar 5, Whole note (same pitch as the first note)
</CsScore>


</CsoundSynthesizer>


<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>240</r>
  <g>240</g>
  <b>240</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
