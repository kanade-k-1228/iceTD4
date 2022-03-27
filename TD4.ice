{
  "version": "1.2",
  "package": {
    "name": "TD4",
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
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "B2"
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "0",
                "name": "PIN_9",
                "value": "E1"
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
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
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
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
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
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
  },
  "dependencies": {
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