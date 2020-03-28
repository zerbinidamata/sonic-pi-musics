use_bpm 136

live_loop :kick do
  with_fx :compressor do
    sample :drum_heavy_kick, pre_amp: 3, amp: 3, attack: 0.5
    sleep 1
  end
end

live_loop :baseline do
  with_fx :compressor do
    play :F2
    sleep 1
    play :F2
    sleep 0.5
    play :As2
    sleep 0.5
    play :F2
    sleep 0.5
    play :F2
    sleep 1
    play :F2
    sleep 1
    play :F2
    sleep 0.5
    play :As2
    sleep 0.5
    play :F2
    sleep 0.5
    play :C2
    sleep 1
  end
end

##| play :F
##| sleep 1
##| play :As
##| sleep 0.1
##| play :C
##| sleep 0.1
##| play :Ds
##| sleep 0.1
##| play :G
##| sleep 0.1
##| play :D
##| sleep 0.1
##| play :Fs


