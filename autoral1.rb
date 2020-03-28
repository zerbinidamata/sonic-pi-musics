use_sample_bpm :loop_amen

with_fx :rlpf, cutoff: 10, cutoff_slide: 4 do |c|
  live_loop :dnb do
    sample :bass_dnb_f, amp: 5
    sample :loop_amen, amp: 5
    sleep 1
    control c, cutoff: rrand(40, 120), cutoff_slide: rrand(1, 4)
  end
end

live_loop :wub_wub do
  with_fx :wobble, phase: 2, reps: 16 do |w|
    with_fx :echo, mix: 0.6 do
      sample :drum_heavy_kick
      sample :bass_hit_c, rate: 0.8, amp: 0.4
      sleep 1
      ## try changing the wobble's phase duration:
      control w, phase: (ring 0.5, 1, 2).choose
    end
  end
end

live_loop :acid do
  4.times do |i|
    use_random_seed 667
    8.times do
      use_synth :tb303
      play chord(:e3, :minor).choose, attack: 0, release: 0.1, cutoff: rrand_i(50, 90) + i * 10
      sleep 0.125
    end
  end
  sleep 10
end


live_loop :back_to do
  sleep 10
  with_fx :reverb, mix: 0.3 do |r|
    32.times do |m|
      control r, mix: 0.3 + (0.5 * (m.to_f / 32.0)) unless m == 0 if m % 8 == 0
      use_synth :prophet
      play chord(:e3, :minor).choose, attack: 0, release: 0.08, cutoff: rrand_i(110, 130)
      sleep 0.125
    end
  end
end