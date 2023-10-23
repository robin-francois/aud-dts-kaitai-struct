meta:
  id: aud_dts
  file-extension: aud
  endian: le seq:
  - id: header
    type: header types:
 bcd1:
    seq:
      - id: b1
        type: u1
    instances:
      digit1:
        value: b1 & 0xf
      digit2:
        value: (b1 & 0xf0) >> 4
      as_int:
        value: >
          digit1 +
          digit2 * 10
 header:
  seq:
  - id: title
    type: str
    encoding: ASCII
    size: 60
  - id: language
    type: str
    encoding: ASCII
    size: 8
  - id: studio
    type: str
    encoding: ASCII
    size: 6
  - id: unknown
    type: u4
  - id: numero_bobine
    type: u2
  - id: serial
    type: u2
  - id: channels
    type: u2
  - id: dts_start_frame
    type: bcd1
  - id: dts_start_sec
    type: bcd1
  - id: dts_start_min
    type: bcd1
  - id: dts_start_hour
    type: bcd1
  - id: duration_frame
    type: bcd1
  - id: duration_sec
    type: bcd1
  - id: duration_min
    type: bcd1
  - id: duration_hour
    type: bcd1
  
  
  
