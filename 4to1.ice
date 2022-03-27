{
  "version": "1.2",
  "package": {
    "name": "",
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
          "id": "e30f30a4-f1c6-4e00-b4c1-4272ffd5eb42",
          "type": "basic.input",
          "data": {
            "name": "3",
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
            "x": 160,
            "y": 96
          }
        },
        {
          "id": "aefdbf6b-2ddf-4935-ab4b-7f586d527fd1",
          "type": "basic.input",
          "data": {
            "name": "2",
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
            "x": 648,
            "y": 144
          }
        },
        {
          "id": "e6ca487a-b98c-41a6-bda6-2c9da009bb42",
          "type": "basic.input",
          "data": {
            "name": "1",
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
            "x": 160,
            "y": 160
          }
        },
        {
          "id": "48d7219e-155a-45b6-ba65-80038398640c",
          "type": "basic.input",
          "data": {
            "name": "0",
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
  },
  "dependencies": {}
}
