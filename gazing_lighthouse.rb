# Gazing Lighthouse
use_bpm 60
use_synth :hollow
with_fx :reverb, mix: 0.7, amp: 4.0 do
  
  live_loop :chord do
    play chord(:Eb4, :maj9), attack: 8, release: 6
    sleep 8
    play chord(:D4, :madd9), attack: 8, release: 6
    sleep 8
    play chord(:Bb4, :M7), attack: 8, release: 6
    sleep 8
    play chord(:Ab4, :major7), attack: 8, release: 6
    sleep 8
  end
end


with_fx :reverb, mix: 0.7, amp: 0.4 do
  live_loop :oceans do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.2, 1.0), attack: rrand(0, 3), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 1)
    control s, pan: rrand(-1, 1), cutoff: rrand(40, 110)
    sleep rrand(2, 4)
  end
  
  live_loop :ambient do
    sp_name = choose sample_names :ambi
    s2 = sample sp_name, cutoff: rrand(70, 130), rate: 0.7 * choose([0.5, 1]), pan: rrand(-1, 1)
    control s2, pan: rrand(-1, 1)
    sleep rrand(4, 8)
  end
  
  live_loop :bells do
    sample :perc_bell, rate: (rrand 0.04, 0.1), amp: 0.4, pan: rrand(-1, 1), release: rrand(4, 8)
    sleep rrand(4, 8)
  end
  
end



