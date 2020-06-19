# frozen_string_literal: true

use_bpm 140

define :synth2 do
  use_synth :fm
  play :gs5
  play :ds5
  play :b5
  sleep 2
  play :as5
  play :f5
  play :cs5
  sleep 2
  play :as5
  play :fs5
  play :ds5
  sleep 2
  play :as5
  play :f5
  play :cs5
  sleep 2
end

define :synth2_end_chorus do
  play :gs5
  play :ds5
  play :b5
  sleep 1
  play :as5, attack: 1,  sustain: 1
  play :f5, attack: 1, sustain: 1
  play :cs5, attack: 1, sustain: 1
  sleep 2
end

define :mid_synth1 do
  play :gs4
  sleep 1
  play :as4
  sleep 2
  play :gs4
  sleep 2
  play :as4, attack: 0.5, sustain: 0.5
  sleep 1
end

define :synth1 do
  play :as4
  sleep 2
  4.times do
    mid_synth1
  end
  play :fs4
  sleep 1
  play :gs4
end

live_loop :chorus_synth1 do
  # 6
  4.times do
    with_fx :reverb do
      synth1
    end
  end
  with_fx :reverb do
    mid_synth1
  end
  stop
end

live_loop :chorus_synth2 do
  sleep 20
  4.times do
    with_fx :reverb do
      synth2
    end
  end
  1.times do
    synth2_end_chorus
  end
  stop
end
