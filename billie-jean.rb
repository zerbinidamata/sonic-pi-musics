
use_bpm 120

live_loop :drums do
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

with_fx :level, amp: 1.5 do
  use_synth :fm
  live_loop :bass do
    play :Fs3
    sleep 0.5
    play :Cs3
    sleep 0.5
    play :E3
    sleep 0.5
    play :Fs3
    sleep 0.5
    play :E3
    sleep 0.5
    play :Cs3
    sleep 0.5
    play :B2
    sleep 0.5
    play :Cs3
    sleep 0.5
  end
end

sleep 8

live_loop :guitar do
  play_chord [:Cs4, :Fs4, :A5, :Cs5]
  sleep 1.5
  play_chord [:Ds4, :Gs4, :B5, :Ds5]
  sleep 2.5
  play_chord [:E4, :A4, :C6, :E5]
  sleep 1.5
  play_chord [:Ds4, :Gs4, :B5, :Ds5]
  sleep 2.5
end