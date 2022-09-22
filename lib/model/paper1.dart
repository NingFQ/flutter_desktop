List paper1List = [
  /// 失效可能性评分
  {
    "level": 1,
    "name": "失效可能性评分",
    "level1Score": null,
    "count": 10,
    "children": [
      {
        "level": 2,
        "name": "第三方破坏评分",
        "level2Score": null,
        "children": [
          {
            "level": 3,
            "name": "地面活动水平",
            "level3Score": null,
            "children": [
              {
                "level": 4,
                "questionId": 1,
                "questionName": "地区等级",
                "questionScore": null,
                "questionType": 1,
                "isDone": 0,
                "option": [
                  {
                    "optionName": "四级地区",
                    "optionScore": 0,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "三级地区",
                    "optionScore": 2,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "二级地区",
                    "optionScore": 4,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "一级地区",
                    "optionScore": 6,
                    "isChecked": 0,
                  },
                ]
              },
              {
                "level": 4,
                "questionId": 2,
                "questionName": "建设活动频繁程度",
                "questionScore": null,
                "questionType": 1,
                "isDone": 1,
                "option": [
                  {
                    "optionName": "位于矿藏开发及重工业生产地区",
                    "optionScore": 0,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "位于在建的经济开发区",
                    "optionScore": 1,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "位于经常对周围地下设施维护地区",
                    "optionScore": 1.5,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "附近有清理水沟、修围墙等维护活动地区",
                    "optionScore": 2,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "无建设活动地区",
                    "optionScore": 3,
                    "isChecked": 0,
                  },
                ]
              },
              {
                "level": 4,
                "questionId": 3,
                "questionName": "对建设活动施工单位技术交底",
                "questionScore": null,
                "questionType": 1,
                "isDone": 1,
                "option": [
                  {
                    "optionName": "未交底",
                    "optionScore": 0,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "图纸交底",
                    "optionScore": 1,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "现场交底",
                    "optionScore": 3,
                    "isChecked": 0,
                  },
                ]
              },
              {
                "level": 4,
                "questionId": 4,
                "questionName": "交通繁忙程度",
                "questionScore": null,
                "questionType": 1,
                "isDone": 0,
                "option": [
                  {
                    "optionName": "附近有铁路、公路交通主干线",
                    "optionScore": 0,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "附近有公路交通线干线",
                    "optionScore": 0.5,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "附近有公路交通线、乡村公路、机耕道",
                    "optionScore": 1,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "几乎没有车辆通行",
                    "optionScore": 2,
                    "isChecked": 0,
                  },
                ],
              },
              {
                "level": 4,
                "questionId": 5,
                "questionName": "农业生产",
                "questionScore": null,
                "questionType": 1,
                "isDone": 0,
                "option": [
                  {
                    "optionName": "上方进行大型机械化耕种，打苕沟，犁地等较深挖掘",
                    "optionScore": 0,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "少量挖掘深度小于50cm的浅土层农作物",
                    "optionScore": 1,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "无农业生产活动 ",
                    "optionScore": 2,
                    "isChecked": 0,
                  },
                ],
              },
            ]
          },
          {
            "level": 3,
            "name": "非水下穿越管道埋深",
            "level3Score": null,
            "children": [
              {
                "level": 4,
                "questionId": 4,
                "questionName": "埋深",
                "questionScore": null,
                "questionType": 2,
                "isDone": 0,
                "option": []
              }
            ]
          },
          {
            "level": 3,
            "name": "水下穿越管道埋深",
            "level3Score": null,
            "children": [
              {
                "level": 4,
                "questionId": 4,
                "questionName": "可通航船底面至河底土壤深度或未通航水深",
                "questionScore": null,
                "questionType": 2,
                "isDone": 0,
                "option": [
                  {
                    "optionName": "0~0.5m",
                    "optionScore": 0,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "0.5~1m",
                    "optionScore": 2,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "1~1.5m",
                    "optionScore": 3,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "1.5~2m",
                    "optionScore": 4,
                    "isChecked": 0,
                  },
                  {
                    "optionName": "≥2m",
                    "optionScore": 5,
                    "isChecked": 0,
                  },
                ]
              }
            ]
          }
        ]
      },
    ]
  },

  /// 失效后果评分
];
