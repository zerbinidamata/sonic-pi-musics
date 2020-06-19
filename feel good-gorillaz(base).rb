use_bpm 140

# afinação D#m

define :baseline do
  use_synth :fm
  play :ds3
  sleep 1.5
  play :ds3
  sleep 0.5
  play :f3
  sleep 0.5
  play :fs3
  sleep 1
  play :b3
  sleep 1
  play :as3
  sleep 3.5
  play :gs3
  sleep 1.5
  play :gs3
  sleep 0.5
  play :b3
  sleep 0.5
  play :as3
  sleep 1
  play :fs3
  sleep 1
  play :ds3
  sleep 3.5
end

define :drums do
  sample :bd_fat
  sleep 1
  sample :sn_dolf
  sleep 1.5
  sample :bd_fat
  sleep 0.5
  sample :sn_dolf
  sleep 1
  sample :bd_fat
  sleep 1
  sample :sn_dolf
  sleep 1.5
  sample :bd_fat
  sleep 0.5
  sample :sn_dolf
  sleep 1
end

define :pre_chorus_bass do
  play :c3
  sleep 0.5
  play :as3
  sleep 0.5
  play :gs3
  sleep 1
  play :fs3
  sleep 1
  play :ds3
end




in_thread do
  
  live_loop :base do
    
    5.times do
      
      baseline
    end
    pre_chorus_bass
    stop
  end
end

live_loop :drum do
  10.times do
    drums
  end
  stop
end











