{
  "version": "1.2",
  "package": {
    "name": "DFF",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-BX",
    "graph": {
      "blocks": [
        {
          "id": "49b1b4af-4c0f-4ee3-8e74-0981536d1832",
          "type": "basic.input",
          "data": {
            "name": "next",
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
            "x": 384,
            "y": 200
          }
        },
        {
          "id": "2e51137e-cfec-4d0f-b07a-83d07112d73c",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
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
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
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
  },
  "dependencies": {}
}