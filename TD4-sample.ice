{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "kanade-k-1228",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-BX",
    "graph": {
      "blocks": [
        {
          "id": "673fdef5-8acb-4ec3-9ee3-426df456217f",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "B2"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 136
          }
        },
        {
          "id": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_9",
                "value": "E1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 200
          }
        },
        {
          "id": "db80a6d6-da94-4414-bb82-066ff8e4be47",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_4",
                "value": "C2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 752,
            "y": 216
          }
        },
        {
          "id": "65e9472d-81f6-43ca-856f-f310bfbbf4eb",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_3",
                "value": "B1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 752,
            "y": 248
          }
        },
        {
          "id": "483c2d6e-0ed7-474b-83c0-f509e91a3586",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_8",
                "value": "E2"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 264
          }
        },
        {
          "id": "076ec932-2f7b-46f1-961a-d037fac94312",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_2",
                "value": "A1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 752,
            "y": 280
          }
        },
        {
          "id": "8015500e-071e-44e2-b46d-e0da57ed45e5",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_7",
                "value": "D1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 296
          }
        },
        {
          "id": "5d111c46-7aae-4b5c-9e80-1f9581be2d2b",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_1",
                "value": "A2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 752,
            "y": 312
          }
        },
        {
          "id": "e243493b-a13a-4751-b304-4b095e055783",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_6",
                "value": "D2"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 328
          }
        },
        {
          "id": "134340f3-b130-4e2e-b0cb-f057d8138c35",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "PIN_5",
                "value": "C1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 360
          }
        },
        {
          "id": "9d3edd7c-e7cf-43b9-a221-d201c1cb15b4",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "22",
            "local": false
          },
          "position": {
            "x": 168,
            "y": 32
          }
        },
        {
          "id": "88d9b1ee-3109-4bbf-9f53-d63fad1c8a07",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] data;\r\nalways @(*) begin\r\n    case (addr)                        // addr  data   assembler\r\n        4'b0000: data <= 8'b0110_0000; // 0     8'h60  IN  B\r\n        4'b0001: data <= 8'b1001_0000; // 1     8'h90  OUT B\r\n        4'b0010: data <= 8'b0011_1101; // 2     8'h3D  MOV A, 13\r\n        4'b0011: data <= 8'b0000_0001; // 3     8'h01  ADD A, 1\r\n        4'b0100: data <= 8'b1110_0011; // 4     8'hE3  JNC    3\r\n        4'b0101: data <= 8'b0101_0001; // 5     8'h51  ADD B, 1\r\n        4'b0110: data <= 8'b1110_0001; // 6     8'hE1  JNC    1\r\n        4'b0111: data <= 8'b1011_0000; // 7     8'hB0  OUT    0\r\n        4'b1000: data <= 8'b1011_1111; // 8     8'hBF  OUT    15\r\n        4'b1001: data <= 8'b1111_0111; // 9     8'hF7  JMP    7\r\n        default: data <= 8'b0000_0000;\r\n    endcase\r\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "addr",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 104,
            "y": 480
          },
          "size": {
            "width": 672,
            "height": 312
          }
        },
        {
          "id": "4b09e181-91bc-4185-b73d-f14324a4096b",
          "type": "986254e9a00b82e185d41b1cbf090db5f49cd15f",
          "position": {
            "x": 168,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "617d729e-de77-4be4-878f-32cbe497628b",
          "type": "e5ee45971e7fd6ff72cd3c4dacfdb0b7054f32ad",
          "position": {
            "x": 624,
            "y": 232
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "a49bab52-e7ac-437e-afc5-236e6aa63473",
          "type": "6a50747141af6d1cfb3bb9d0093fb94862ff5a65",
          "position": {
            "x": 168,
            "y": 136
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e550bb6c-0380-44b1-941d-66eec773e817",
          "type": "f51f78545b6c0143778582eb8772a44fcc3b83b3",
          "position": {
            "x": 392,
            "y": 264
          },
          "size": {
            "width": 96,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "483c2d6e-0ed7-474b-83c0-f509e91a3586",
            "port": "out"
          },
          "target": {
            "block": "4b09e181-91bc-4185-b73d-f14324a4096b",
            "port": "e30f30a4-f1c6-4e00-b4c1-4272ffd5eb42"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "8015500e-071e-44e2-b46d-e0da57ed45e5",
            "port": "out"
          },
          "target": {
            "block": "4b09e181-91bc-4185-b73d-f14324a4096b",
            "port": "aefdbf6b-2ddf-4935-ab4b-7f586d527fd1"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "e243493b-a13a-4751-b304-4b095e055783",
            "port": "out"
          },
          "target": {
            "block": "4b09e181-91bc-4185-b73d-f14324a4096b",
            "port": "e6ca487a-b98c-41a6-bda6-2c9da009bb42"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "134340f3-b130-4e2e-b0cb-f057d8138c35",
            "port": "out"
          },
          "target": {
            "block": "4b09e181-91bc-4185-b73d-f14324a4096b",
            "port": "48d7219e-155a-45b6-ba65-80038398640c"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "617d729e-de77-4be4-878f-32cbe497628b",
            "port": "1d1162ac-46eb-494d-bf58-7984dd2e5f28"
          },
          "target": {
            "block": "db80a6d6-da94-4414-bb82-066ff8e4be47",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "617d729e-de77-4be4-878f-32cbe497628b",
            "port": "b6b7e0cd-7c52-421d-94b0-c43ef30152f7"
          },
          "target": {
            "block": "65e9472d-81f6-43ca-856f-f310bfbbf4eb",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "617d729e-de77-4be4-878f-32cbe497628b",
            "port": "7f4d8a35-9396-4e88-8aaa-8ddecc956281"
          },
          "target": {
            "block": "076ec932-2f7b-46f1-961a-d037fac94312",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "617d729e-de77-4be4-878f-32cbe497628b",
            "port": "3224708b-5bf2-4ea1-a0ef-ba8f1d54a6af"
          },
          "target": {
            "block": "5d111c46-7aae-4b5c-9e80-1f9581be2d2b",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "673fdef5-8acb-4ec3-9ee3-426df456217f",
            "port": "out"
          },
          "target": {
            "block": "a49bab52-e7ac-437e-afc5-236e6aa63473",
            "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
          }
        },
        {
          "source": {
            "block": "9d3edd7c-e7cf-43b9-a221-d201c1cb15b4",
            "port": "constant-out"
          },
          "target": {
            "block": "a49bab52-e7ac-437e-afc5-236e6aa63473",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "e550bb6c-0380-44b1-941d-66eec773e817",
            "port": "8b554b1e-8586-4e55-b915-6c844d561a29"
          },
          "target": {
            "block": "617d729e-de77-4be4-878f-32cbe497628b",
            "port": "9e65a700-0715-4aa1-8269-2fcb9df72b49"
          },
          "size": 4
        },
        {
          "source": {
            "block": "4b09e181-91bc-4185-b73d-f14324a4096b",
            "port": "8ff21f69-150d-42b6-b6b7-d7e3a0e7a00f"
          },
          "target": {
            "block": "e550bb6c-0380-44b1-941d-66eec773e817",
            "port": "9a125188-25c4-4da3-a456-528f4fde16df"
          },
          "size": 4
        },
        {
          "source": {
            "block": "a49bab52-e7ac-437e-afc5-236e6aa63473",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "e550bb6c-0380-44b1-941d-66eec773e817",
            "port": "673fdef5-8acb-4ec3-9ee3-426df456217f"
          }
        },
        {
          "source": {
            "block": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
            "port": "out"
          },
          "target": {
            "block": "e550bb6c-0380-44b1-941d-66eec773e817",
            "port": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6"
          }
        },
        {
          "source": {
            "block": "e550bb6c-0380-44b1-941d-66eec773e817",
            "port": "12cfc9bc-d08a-4ec5-b0b4-7770c61d153f"
          },
          "target": {
            "block": "88d9b1ee-3109-4bbf-9f53-d63fad1c8a07",
            "port": "addr"
          },
          "vertices": [
            {
              "x": 232,
              "y": 448
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "88d9b1ee-3109-4bbf-9f53-d63fad1c8a07",
            "port": "data"
          },
          "target": {
            "block": "e550bb6c-0380-44b1-941d-66eec773e817",
            "port": "4bcd86e4-55fa-4c7e-b175-ac1ec038dd38"
          },
          "vertices": [
            {
              "x": 528,
              "y": 416
            }
          ],
          "size": 8
        }
      ]
    }
  },
  "dependencies": {
    "986254e9a00b82e185d41b1cbf090db5f49cd15f": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e30f30a4-f1c6-4e00-b4c1-4272ffd5eb42",
              "type": "basic.input",
              "data": {
                "name": "3",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 96
              }
            },
            {
              "id": "aefdbf6b-2ddf-4935-ab4b-7f586d527fd1",
              "type": "basic.input",
              "data": {
                "name": "2",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 128
              }
            },
            {
              "id": "8ff21f69-150d-42b6-b6b7-d7e3a0e7a00f",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 648,
                "y": 144
              }
            },
            {
              "id": "e6ca487a-b98c-41a6-bda6-2c9da009bb42",
              "type": "basic.input",
              "data": {
                "name": "1",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 160
              }
            },
            {
              "id": "48d7219e-155a-45b6-ba65-80038398640c",
              "type": "basic.input",
              "data": {
                "name": "0",
                "clock": false
              },
              "position": {
                "x": 160,
                "y": 192
              }
            },
            {
              "id": "43ebd6cf-8347-4543-aadc-66356203fca0",
              "type": "basic.code",
              "data": {
                "code": "assign w={w3,w2,w1,w0};",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "w3"
                    },
                    {
                      "name": "w2"
                    },
                    {
                      "name": "w1"
                    },
                    {
                      "name": "w0"
                    }
                  ],
                  "out": [
                    {
                      "name": "w",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 312,
                "y": 112
              },
              "size": {
                "width": 280,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e30f30a4-f1c6-4e00-b4c1-4272ffd5eb42",
                "port": "out"
              },
              "target": {
                "block": "43ebd6cf-8347-4543-aadc-66356203fca0",
                "port": "w3"
              }
            },
            {
              "source": {
                "block": "aefdbf6b-2ddf-4935-ab4b-7f586d527fd1",
                "port": "out"
              },
              "target": {
                "block": "43ebd6cf-8347-4543-aadc-66356203fca0",
                "port": "w2"
              }
            },
            {
              "source": {
                "block": "e6ca487a-b98c-41a6-bda6-2c9da009bb42",
                "port": "out"
              },
              "target": {
                "block": "43ebd6cf-8347-4543-aadc-66356203fca0",
                "port": "w1"
              }
            },
            {
              "source": {
                "block": "48d7219e-155a-45b6-ba65-80038398640c",
                "port": "out"
              },
              "target": {
                "block": "43ebd6cf-8347-4543-aadc-66356203fca0",
                "port": "w0"
              }
            },
            {
              "source": {
                "block": "43ebd6cf-8347-4543-aadc-66356203fca0",
                "port": "w"
              },
              "target": {
                "block": "8ff21f69-150d-42b6-b6b7-d7e3a0e7a00f",
                "port": "in"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "e5ee45971e7fd6ff72cd3c4dacfdb0b7054f32ad": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1d1162ac-46eb-494d-bf58-7984dd2e5f28",
              "type": "basic.output",
              "data": {
                "name": "3"
              },
              "position": {
                "x": 648,
                "y": 208
              }
            },
            {
              "id": "b6b7e0cd-7c52-421d-94b0-c43ef30152f7",
              "type": "basic.output",
              "data": {
                "name": "2"
              },
              "position": {
                "x": 648,
                "y": 240
              }
            },
            {
              "id": "9e65a700-0715-4aa1-8269-2fcb9df72b49",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 192,
                "y": 256
              }
            },
            {
              "id": "7f4d8a35-9396-4e88-8aaa-8ddecc956281",
              "type": "basic.output",
              "data": {
                "name": "1"
              },
              "position": {
                "x": 648,
                "y": 272
              }
            },
            {
              "id": "3224708b-5bf2-4ea1-a0ef-ba8f1d54a6af",
              "type": "basic.output",
              "data": {
                "name": "0"
              },
              "position": {
                "x": 648,
                "y": 304
              }
            },
            {
              "id": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
              "type": "basic.code",
              "data": {
                "code": "assign {w3,w2,w1,w0}=w;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "w",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "w3"
                    },
                    {
                      "name": "w2"
                    },
                    {
                      "name": "w1"
                    },
                    {
                      "name": "w0"
                    }
                  ]
                }
              },
              "position": {
                "x": 336,
                "y": 224
              },
              "size": {
                "width": 264,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
                "port": "w3"
              },
              "target": {
                "block": "1d1162ac-46eb-494d-bf58-7984dd2e5f28",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
                "port": "w2"
              },
              "target": {
                "block": "b6b7e0cd-7c52-421d-94b0-c43ef30152f7",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
                "port": "w1"
              },
              "target": {
                "block": "7f4d8a35-9396-4e88-8aaa-8ddecc956281",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
                "port": "w0"
              },
              "target": {
                "block": "3224708b-5bf2-4ea1-a0ef-ba8f1d54a6af",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9e65a700-0715-4aa1-8269-2fcb9df72b49",
                "port": "out"
              },
              "target": {
                "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
                "port": "w"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "6a50747141af6d1cfb3bb9d0093fb94862ff5a65": {
      "package": {
        "name": "PrescalerN",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 256
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 256
              }
            },
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 56
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [N-1:0] divcounter;\n\n//-- N bit counter\nalways @(posedge clk_in)\n  divcounter <= divcounter + 1;\n\n//-- Use the most significant bit as output\nassign clk_out = divcounter[N-1];",
                "params": [
                  {
                    "name": "N"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 448,
                "height": 224
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "N"
              }
            }
          ]
        }
      }
    },
    "f51f78545b6c0143778582eb8772a44fcc3b83b3": {
      "package": {
        "name": "TD4",
        "version": "",
        "description": "",
        "author": "kanade-k-1228",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "673fdef5-8acb-4ec3-9ee3-426df456217f",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 216
              }
            },
            {
              "id": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
              "type": "basic.input",
              "data": {
                "name": "n_rst",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 360
              }
            },
            {
              "id": "8b554b1e-8586-4e55-b915-6c844d561a29",
              "type": "basic.output",
              "data": {
                "name": "out",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 576,
                "y": 592
              }
            },
            {
              "id": "12cfc9bc-d08a-4ec5-b0b4-7770c61d153f",
              "type": "basic.output",
              "data": {
                "name": "pc",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 576,
                "y": 712
              }
            },
            {
              "id": "9a125188-25c4-4da3-a456-528f4fde16df",
              "type": "basic.input",
              "data": {
                "name": "in",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 120,
                "y": 776
              }
            },
            {
              "id": "4bcd86e4-55fa-4c7e-b175-ac1ec038dd38",
              "type": "basic.input",
              "data": {
                "name": "ins",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 120,
                "y": 888
              }
            },
            {
              "id": "feeddbae-beeb-4b6d-8652-b9a83e446647",
              "type": "377fae4f5ee339d1f18d9673afe11289becde8bd",
              "position": {
                "x": 432,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "b3406d97-e58a-4201-82cc-f204b656ff9b",
              "type": "377fae4f5ee339d1f18d9673afe11289becde8bd",
              "position": {
                "x": 432,
                "y": 312
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "3f0c8459-b8f4-4d9b-bf49-d4b062394354",
              "type": "377fae4f5ee339d1f18d9673afe11289becde8bd",
              "position": {
                "x": 432,
                "y": 536
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "b2baee21-9860-4d3e-beca-59e3da4f0823",
              "type": "377fae4f5ee339d1f18d9673afe11289becde8bd",
              "position": {
                "x": 432,
                "y": 648
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "1691cf7c-3ca0-4521-9103-bd71319cd649",
              "type": "f0c78d3228ab8ff2bf8e551c6ae3cb3be5ea5136",
              "position": {
                "x": 432,
                "y": 424
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "39559a7b-0c0d-4349-ad7f-531796f4529a",
              "type": "basic.code",
              "data": {
                "code": "wire [3:0] opc, imm;\r\nassign opc  = ins[7:4];\r\nassign imm  = ins[3:0];\r\n\r\nreg [3:0] next_a;\r\nreg [3:0] next_b;\r\nreg       next_flag;\r\nreg [3:0] next_pc;\r\nreg [3:0] next_out;\r\n\r\nalways @(*) begin\r\n    next_a    = a;\r\n    next_b    = b;\r\n    next_flag = 1'b0;\r\n    next_pc   = pc + 4'd1;\r\n    next_out  = out;\r\n    case (opc)\r\n        4'b0000: {next_flag, next_a} = a + imm;     // ADD A, IMM\r\n        4'b0101: {next_flag, next_b} = b + imm;     // ADD B, IMM\r\n        4'b0011: next_a   = imm;                    // MOV A, IMM\r\n        4'b0111: next_b   = imm;                    // MOV B, IMM\r\n        4'b0001: next_a   = b;                      // MOV A, B\r\n        4'b0100: next_b   = a;                      // MOV B, A\r\n        4'b1111: next_pc  = imm;                    // JMP IMM\r\n        4'b1110: next_pc  = flag ? pc + 4'd1 : imm; // JNC IMM\r\n        4'b0010: next_a   = in;                     // IN  A\r\n        4'b0110: next_b   = in;                     // IN  B\r\n        4'b1001: next_out = b;                      // OUT B\r\n        4'b1011: next_out = imm;                    // OUT IMM\r\n        default: ;\r\n    endcase\r\nend\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "b",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "flag"
                    },
                    {
                      "name": "out",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "pc",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "in",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "ins",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "next_a",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "next_b",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "next_flag"
                    },
                    {
                      "name": "next_out",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "next_pc",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 712,
                "y": 192
              },
              "size": {
                "width": 672,
                "height": 784
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "feeddbae-beeb-4b6d-8652-b9a83e446647",
                "port": "5a70d662-e926-4621-9510-9275f6252dc9"
              },
              "target": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "a"
              },
              "size": 4
            },
            {
              "source": {
                "block": "b3406d97-e58a-4201-82cc-f204b656ff9b",
                "port": "5a70d662-e926-4621-9510-9275f6252dc9"
              },
              "target": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "b"
              },
              "size": 4
            },
            {
              "source": {
                "block": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
                "port": "out"
              },
              "target": {
                "block": "feeddbae-beeb-4b6d-8652-b9a83e446647",
                "port": "ce5e6133-6733-4bf2-bf63-7ee52a055c69"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 296
                }
              ]
            },
            {
              "source": {
                "block": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
                "port": "out"
              },
              "target": {
                "block": "b3406d97-e58a-4201-82cc-f204b656ff9b",
                "port": "ce5e6133-6733-4bf2-bf63-7ee52a055c69"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
                "port": "out"
              },
              "target": {
                "block": "1691cf7c-3ca0-4521-9103-bd71319cd649",
                "port": "ce5e6133-6733-4bf2-bf63-7ee52a055c69"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 504
                }
              ]
            },
            {
              "source": {
                "block": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
                "port": "out"
              },
              "target": {
                "block": "3f0c8459-b8f4-4d9b-bf49-d4b062394354",
                "port": "ce5e6133-6733-4bf2-bf63-7ee52a055c69"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 616
                }
              ]
            },
            {
              "source": {
                "block": "dd6fef0d-ee87-41d0-89fc-70f2c40127a6",
                "port": "out"
              },
              "target": {
                "block": "b2baee21-9860-4d3e-beca-59e3da4f0823",
                "port": "ce5e6133-6733-4bf2-bf63-7ee52a055c69"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 728
                }
              ]
            },
            {
              "source": {
                "block": "673fdef5-8acb-4ec3-9ee3-426df456217f",
                "port": "out"
              },
              "target": {
                "block": "feeddbae-beeb-4b6d-8652-b9a83e446647",
                "port": "2e51137e-cfec-4d0f-b07a-83d07112d73c"
              }
            },
            {
              "source": {
                "block": "673fdef5-8acb-4ec3-9ee3-426df456217f",
                "port": "out"
              },
              "target": {
                "block": "b3406d97-e58a-4201-82cc-f204b656ff9b",
                "port": "2e51137e-cfec-4d0f-b07a-83d07112d73c"
              }
            },
            {
              "source": {
                "block": "673fdef5-8acb-4ec3-9ee3-426df456217f",
                "port": "out"
              },
              "target": {
                "block": "1691cf7c-3ca0-4521-9103-bd71319cd649",
                "port": "2e51137e-cfec-4d0f-b07a-83d07112d73c"
              }
            },
            {
              "source": {
                "block": "673fdef5-8acb-4ec3-9ee3-426df456217f",
                "port": "out"
              },
              "target": {
                "block": "3f0c8459-b8f4-4d9b-bf49-d4b062394354",
                "port": "2e51137e-cfec-4d0f-b07a-83d07112d73c"
              }
            },
            {
              "source": {
                "block": "673fdef5-8acb-4ec3-9ee3-426df456217f",
                "port": "out"
              },
              "target": {
                "block": "b2baee21-9860-4d3e-beca-59e3da4f0823",
                "port": "2e51137e-cfec-4d0f-b07a-83d07112d73c"
              }
            },
            {
              "source": {
                "block": "9a125188-25c4-4da3-a456-528f4fde16df",
                "port": "out"
              },
              "target": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "1691cf7c-3ca0-4521-9103-bd71319cd649",
                "port": "51065aab-d360-46bf-93da-08d49354099b"
              },
              "target": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "flag"
              }
            },
            {
              "source": {
                "block": "3f0c8459-b8f4-4d9b-bf49-d4b062394354",
                "port": "5a70d662-e926-4621-9510-9275f6252dc9"
              },
              "target": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "out"
              },
              "size": 4
            },
            {
              "source": {
                "block": "b2baee21-9860-4d3e-beca-59e3da4f0823",
                "port": "5a70d662-e926-4621-9510-9275f6252dc9"
              },
              "target": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "pc"
              },
              "size": 4
            },
            {
              "source": {
                "block": "4bcd86e4-55fa-4c7e-b175-ac1ec038dd38",
                "port": "out"
              },
              "target": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "ins"
              },
              "size": 8
            },
            {
              "source": {
                "block": "b2baee21-9860-4d3e-beca-59e3da4f0823",
                "port": "5a70d662-e926-4621-9510-9275f6252dc9"
              },
              "target": {
                "block": "12cfc9bc-d08a-4ec5-b0b4-7770c61d153f",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "3f0c8459-b8f4-4d9b-bf49-d4b062394354",
                "port": "5a70d662-e926-4621-9510-9275f6252dc9"
              },
              "target": {
                "block": "8b554b1e-8586-4e55-b915-6c844d561a29",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "next_a"
              },
              "target": {
                "block": "feeddbae-beeb-4b6d-8652-b9a83e446647",
                "port": "49b1b4af-4c0f-4ee3-8e74-0981536d1832"
              },
              "vertices": [
                {
                  "x": 1472,
                  "y": 152
                },
                {
                  "x": 320,
                  "y": 152
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "next_b"
              },
              "target": {
                "block": "b3406d97-e58a-4201-82cc-f204b656ff9b",
                "port": "49b1b4af-4c0f-4ee3-8e74-0981536d1832"
              },
              "vertices": [
                {
                  "x": 1488,
                  "y": 136
                },
                {
                  "x": 304,
                  "y": 136
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "next_flag"
              },
              "target": {
                "block": "1691cf7c-3ca0-4521-9103-bd71319cd649",
                "port": "546200e8-2bbb-4735-8e34-9fe651fd69c7"
              },
              "vertices": [
                {
                  "x": 1504,
                  "y": 120
                },
                {
                  "x": 288,
                  "y": 120
                }
              ]
            },
            {
              "source": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "next_out"
              },
              "target": {
                "block": "3f0c8459-b8f4-4d9b-bf49-d4b062394354",
                "port": "49b1b4af-4c0f-4ee3-8e74-0981536d1832"
              },
              "vertices": [
                {
                  "x": 1520,
                  "y": 104
                },
                {
                  "x": 272,
                  "y": 104
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "39559a7b-0c0d-4349-ad7f-531796f4529a",
                "port": "next_pc"
              },
              "target": {
                "block": "b2baee21-9860-4d3e-beca-59e3da4f0823",
                "port": "49b1b4af-4c0f-4ee3-8e74-0981536d1832"
              },
              "vertices": [
                {
                  "x": 1536,
                  "y": 88
                },
                {
                  "x": 256,
                  "y": 88
                }
              ],
              "size": 4
            }
          ]
        }
      }
    },
    "377fae4f5ee339d1f18d9673afe11289becde8bd": {
      "package": {
        "name": "DFF",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "49b1b4af-4c0f-4ee3-8e74-0981536d1832",
              "type": "basic.input",
              "data": {
                "name": "next",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -152,
                "y": 136
              }
            },
            {
              "id": "5a70d662-e926-4621-9510-9275f6252dc9",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 384,
                "y": 200
              }
            },
            {
              "id": "2e51137e-cfec-4d0f-b07a-83d07112d73c",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": -152,
                "y": 200
              }
            },
            {
              "id": "ce5e6133-6733-4bf2-bf63-7ee52a055c69",
              "type": "basic.input",
              "data": {
                "name": "n_rst",
                "clock": false
              },
              "position": {
                "x": -152,
                "y": 256
              }
            },
            {
              "id": "ee3807a5-1c73-48fd-91a4-0032b18e588b",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\nreg [3:0] out;\nalways @(posedge clk) begin\n    if (~n_rst) begin\n        out <= 4'b0000;\n    end else begin\n        out <= next;\n    end\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "next",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "n_rst"
                    }
                  ],
                  "out": [
                    {
                      "name": "out",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 0,
                "y": 136
              },
              "size": {
                "width": 344,
                "height": 184
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2e51137e-cfec-4d0f-b07a-83d07112d73c",
                "port": "out"
              },
              "target": {
                "block": "ee3807a5-1c73-48fd-91a4-0032b18e588b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "ce5e6133-6733-4bf2-bf63-7ee52a055c69",
                "port": "out"
              },
              "target": {
                "block": "ee3807a5-1c73-48fd-91a4-0032b18e588b",
                "port": "n_rst"
              }
            },
            {
              "source": {
                "block": "ee3807a5-1c73-48fd-91a4-0032b18e588b",
                "port": "out"
              },
              "target": {
                "block": "5a70d662-e926-4621-9510-9275f6252dc9",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "49b1b4af-4c0f-4ee3-8e74-0981536d1832",
                "port": "out"
              },
              "target": {
                "block": "ee3807a5-1c73-48fd-91a4-0032b18e588b",
                "port": "next"
              },
              "size": 4
            }
          ]
        }
      }
    },
    "f0c78d3228ab8ff2bf8e551c6ae3cb3be5ea5136": {
      "package": {
        "name": "DFF",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "546200e8-2bbb-4735-8e34-9fe651fd69c7",
              "type": "basic.input",
              "data": {
                "name": "next",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 104
              }
            },
            {
              "id": "51065aab-d360-46bf-93da-08d49354099b",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 544,
                "y": 160
              }
            },
            {
              "id": "2e51137e-cfec-4d0f-b07a-83d07112d73c",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 160
              }
            },
            {
              "id": "ce5e6133-6733-4bf2-bf63-7ee52a055c69",
              "type": "basic.input",
              "data": {
                "name": "n_rst",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 216
              }
            },
            {
              "id": "35bd1a4e-5162-4f61-8850-8a1d80a88952",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\nreg out;\nalways @(posedge clk) begin\n    if (~n_rst) begin\n        out <= 1'b0;\n    end else begin\n        out <= next;\n    end\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "next"
                    },
                    {
                      "name": "clk"
                    },
                    {
                      "name": "n_rst"
                    }
                  ],
                  "out": [
                    {
                      "name": "out"
                    }
                  ]
                }
              },
              "position": {
                "x": 240,
                "y": 112
              },
              "size": {
                "width": 272,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "35bd1a4e-5162-4f61-8850-8a1d80a88952",
                "port": "out"
              },
              "target": {
                "block": "51065aab-d360-46bf-93da-08d49354099b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "ce5e6133-6733-4bf2-bf63-7ee52a055c69",
                "port": "out"
              },
              "target": {
                "block": "35bd1a4e-5162-4f61-8850-8a1d80a88952",
                "port": "n_rst"
              }
            },
            {
              "source": {
                "block": "2e51137e-cfec-4d0f-b07a-83d07112d73c",
                "port": "out"
              },
              "target": {
                "block": "35bd1a4e-5162-4f61-8850-8a1d80a88952",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "546200e8-2bbb-4735-8e34-9fe651fd69c7",
                "port": "out"
              },
              "target": {
                "block": "35bd1a4e-5162-4f61-8850-8a1d80a88952",
                "port": "next"
              }
            }
          ]
        }
      }
    }
  }
}