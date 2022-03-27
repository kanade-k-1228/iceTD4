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
          "id": "546200e8-2bbb-4735-8e34-9fe651fd69c7",
          "type": "basic.input",
          "data": {
            "name": "next",
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
            "x": 104,
            "y": 104
          }
        },
        {
          "id": "51065aab-d360-46bf-93da-08d49354099b",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
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
            "x": 104,
            "y": 160
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
  },
  "dependencies": {}
}