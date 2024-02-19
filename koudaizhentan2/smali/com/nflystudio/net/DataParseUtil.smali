.class public Lcom/nflystudio/net/DataParseUtil;
.super Ljava/lang/Object;
.source "DataParseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Parse(Ljava/lang/String;Lcom/nflystudio/net/BaseRespone;I)V
    .locals 109
    .param p0, "aData"    # Ljava/lang/String;
    .param p1, "aRespone"    # Lcom/nflystudio/net/BaseRespone;
    .param p2, "aRequestType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v106

    if-lez v106, :cond_0

    const-string v106, "null"

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_2

    .line 18
    :cond_0
    const/16 v106, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    .line 984
    :cond_1
    :goto_0
    return-void

    .line 22
    :cond_2
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 263
    :pswitch_1
    new-instance v104, Lcom/nflystudio/net/TopPicData;

    invoke-direct/range {v104 .. v104}, Lcom/nflystudio/net/TopPicData;-><init>()V

    .line 264
    .local v104, "toppicdata":Lcom/nflystudio/net/TopPicData;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0x4

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v104

    iput-object v0, v1, Lcom/nflystudio/net/TopPicData;->toppicdatalist:Ljava/util/ArrayList;

    .line 266
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 267
    .local v6, "arr":Lorg/json/JSONArray;
    const/16 v44, 0x0

    .local v44, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_e

    .line 285
    move-object/from16 v0, v104

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto :goto_0

    .line 25
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v104    # "toppicdata":Lcom/nflystudio/net/TopPicData;
    :pswitch_2
    new-instance v42, Lorg/json/JSONArray;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    .local v42, "hotWordArray":Lorg/json/JSONArray;
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v43, "hotWordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 28
    .local v3, "a":I
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_2
    move/from16 v0, v44

    if-lt v0, v3, :cond_3

    .line 31
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_3
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v43

    move-object/from16 v1, v106

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v44, v44, 0x1

    goto :goto_2

    .line 35
    .end local v3    # "a":I
    .end local v42    # "hotWordArray":Lorg/json/JSONArray;
    .end local v43    # "hotWordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v44    # "i":I
    :pswitch_3
    new-instance v97, Ljava/util/ArrayList;

    invoke-direct/range {v97 .. v97}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v97, "rgList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/RelatedGame;>;"
    new-instance v28, Lorg/json/JSONArray;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 37
    .local v28, "gameType":Lorg/json/JSONArray;
    const/16 v106, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v70

    .line 38
    .local v70, "jsonObject7":Lorg/json/JSONObject;
    const-string v106, "items"

    move-object/from16 v0, v70

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v60

    .line 39
    .local v60, "jsonArray5":Lorg/json/JSONArray;
    invoke-virtual/range {v60 .. v60}, Lorg/json/JSONArray;->length()I

    move-result v78

    .line 40
    .local v78, "ll":I
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_3
    move/from16 v0, v44

    move/from16 v1, v78

    if-lt v0, v1, :cond_4

    .line 60
    move-object/from16 v0, v97

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 41
    :cond_4
    new-instance v96, Lcom/nflystudio/net/RelatedGame;

    invoke-direct/range {v96 .. v96}, Lcom/nflystudio/net/RelatedGame;-><init>()V

    .line 42
    .local v96, "rg":Lcom/nflystudio/net/RelatedGame;
    move-object/from16 v0, v60

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v64

    .line 43
    .local v64, "jsonObject":Lorg/json/JSONObject;
    const-string v106, "description"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setDescription(Ljava/lang/String;)V

    .line 44
    const-string v106, "gamefeature"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setGamefeature(Ljava/lang/String;)V

    .line 45
    const-string v106, "android_apkname"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setAndroid_apkname(Ljava/lang/String;)V

    .line 46
    const-string v106, "android_down"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setAndroid_down(Ljava/lang/String;)V

    .line 47
    const-string v106, "android_icon"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setAndroid_icon(Ljava/lang/String;)V

    .line 48
    const-string v106, "android_size"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setAndroid_size(Ljava/lang/String;)V

    .line 49
    const-string v106, "android_update"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setAndroid_update(Ljava/lang/String;)V

    .line 50
    const-string v106, "android_ver"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setAndroid_ver(Ljava/lang/String;)V

    .line 51
    const-string v106, "click"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setClick(Ljava/lang/String;)V

    .line 52
    const-string v106, "dtid"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setDtid(Ljava/lang/String;)V

    .line 53
    const-string v106, "flag"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setFlag(Ljava/lang/String;)V

    .line 54
    const-string v106, "gametype"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setGametype(Ljava/lang/String;)V

    .line 55
    const-string v106, "litpic"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setLitpic(Ljava/lang/String;)V

    .line 56
    const-string v106, "star"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setStar(Ljava/lang/String;)V

    .line 57
    const-string v106, "title"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v96

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/RelatedGame;->setTitle(Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, v97

    move-object/from16 v1, v96

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_3

    .line 64
    .end local v28    # "gameType":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v60    # "jsonArray5":Lorg/json/JSONArray;
    .end local v64    # "jsonObject":Lorg/json/JSONObject;
    .end local v70    # "jsonObject7":Lorg/json/JSONObject;
    .end local v78    # "ll":I
    .end local v96    # "rg":Lcom/nflystudio/net/RelatedGame;
    .end local v97    # "rgList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/RelatedGame;>;"
    :pswitch_4
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v47, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/NewsDataItem;>;"
    new-instance v53, Lorg/json/JSONObject;

    move-object/from16 v0, v53

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v53, "joo":Lorg/json/JSONObject;
    const-string v106, "items"

    move-object/from16 v0, v53

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 67
    .local v7, "array":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v84

    .line 68
    .local v84, "num":I
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_4
    move/from16 v0, v44

    move/from16 v1, v84

    if-lt v0, v1, :cond_5

    .line 82
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 69
    :cond_5
    move/from16 v0, v44

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v64

    .line 70
    .restart local v64    # "jsonObject":Lorg/json/JSONObject;
    new-instance v46, Lcom/nflystudio/net/NewsDataItem;

    invoke-direct/range {v46 .. v46}, Lcom/nflystudio/net/NewsDataItem;-><init>()V

    .line 71
    .local v46, "item":Lcom/nflystudio/net/NewsDataItem;
    const-string v106, "aid"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->aid:Ljava/lang/String;

    .line 72
    const-string v106, "shorttitle"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->shorttitle:Ljava/lang/String;

    .line 73
    const-string v106, "description"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->description:Ljava/lang/String;

    .line 74
    const-string v106, "dtid"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->dtid:Ljava/lang/String;

    .line 75
    const-string v106, "flag"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->flag:Ljava/lang/String;

    .line 76
    const-string v106, "litpic"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->litpic:Ljava/lang/String;

    .line 77
    const-string v106, "pubdate"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->pubdate:Ljava/lang/String;

    .line 78
    const-string v106, "title"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->title:Ljava/lang/String;

    .line 79
    const-string v106, "writer"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->writer:Ljava/lang/String;

    .line 80
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_4

    .line 89
    .end local v7    # "array":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v46    # "item":Lcom/nflystudio/net/NewsDataItem;
    .end local v47    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/NewsDataItem;>;"
    .end local v53    # "joo":Lorg/json/JSONObject;
    .end local v64    # "jsonObject":Lorg/json/JSONObject;
    .end local v84    # "num":I
    :pswitch_5
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v16, "cgList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/ChinesizeGame;>;"
    new-instance v59, Lorg/json/JSONArray;

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 91
    .local v59, "jsonArray4":Lorg/json/JSONArray;
    const/16 v106, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v52

    .line 92
    .local v52, "jo":Lorg/json/JSONObject;
    const-string v106, "items"

    move-object/from16 v0, v52

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v50

    .line 93
    .local v50, "ja":Lorg/json/JSONArray;
    invoke-virtual/range {v50 .. v50}, Lorg/json/JSONArray;->length()I

    move-result v72

    .line 94
    .local v72, "l":I
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_5
    move/from16 v0, v44

    move/from16 v1, v72

    if-lt v0, v1, :cond_6

    .line 112
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 95
    :cond_6
    move-object/from16 v0, v50

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v86

    .line 96
    .local v86, "ob":Lorg/json/JSONObject;
    new-instance v15, Lcom/nflystudio/net/ChinesizeGame;

    invoke-direct {v15}, Lcom/nflystudio/net/ChinesizeGame;-><init>()V

    .line 97
    .local v15, "cg":Lcom/nflystudio/net/ChinesizeGame;
    const-string v106, "android_apkname"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setAndroid_apkname(Ljava/lang/String;)V

    .line 98
    const-string v106, "android_down"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setAndroid_down(Ljava/lang/String;)V

    .line 99
    const-string v106, "android_icon"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setAndroid_icon(Ljava/lang/String;)V

    .line 100
    const-string v106, "android_size"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setAndroid_size(Ljava/lang/String;)V

    .line 101
    const-string v106, "android_update"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setAndroid_update(Ljava/lang/String;)V

    .line 102
    const-string v106, "android_ver"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setAndroid_ver(Ljava/lang/String;)V

    .line 103
    const-string v106, "click"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setClick(Ljava/lang/String;)V

    .line 104
    const-string v106, "dtid"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setDtid(Ljava/lang/String;)V

    .line 105
    const-string v106, "flag"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setFlag(Ljava/lang/String;)V

    .line 106
    const-string v106, "gametype"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setGametype(Ljava/lang/String;)V

    .line 107
    const-string v106, "litpic"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setLitpic(Ljava/lang/String;)V

    .line 108
    const-string v106, "star"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setStar(Ljava/lang/String;)V

    .line 109
    const-string v106, "title"

    move-object/from16 v0, v86

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v15, v0}, Lcom/nflystudio/net/ChinesizeGame;->setTitle(Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_5

    .line 116
    .end local v15    # "cg":Lcom/nflystudio/net/ChinesizeGame;
    .end local v16    # "cgList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/ChinesizeGame;>;"
    .end local v44    # "i":I
    .end local v50    # "ja":Lorg/json/JSONArray;
    .end local v52    # "jo":Lorg/json/JSONObject;
    .end local v59    # "jsonArray4":Lorg/json/JSONArray;
    .end local v72    # "l":I
    .end local v86    # "ob":Lorg/json/JSONObject;
    :pswitch_6
    new-instance v102, Ljava/util/ArrayList;

    invoke-direct/range {v102 .. v102}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v102, "tbList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/TitleBean;>;"
    new-instance v58, Lorg/json/JSONArray;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 118
    .local v58, "jsonArray3":Lorg/json/JSONArray;
    invoke-virtual/range {v58 .. v58}, Lorg/json/JSONArray;->length()I

    move-result v75

    .line 119
    .local v75, "length2":I
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_6
    move/from16 v0, v44

    move/from16 v1, v75

    if-lt v0, v1, :cond_7

    .line 127
    move-object/from16 v0, v102

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 120
    :cond_7
    move-object/from16 v0, v58

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lorg/json/JSONObject;

    .line 121
    .local v85, "o":Lorg/json/JSONObject;
    new-instance v101, Lcom/nflystudio/net/TitleBean;

    invoke-direct/range {v101 .. v101}, Lcom/nflystudio/net/TitleBean;-><init>()V

    .line 122
    .local v101, "tb":Lcom/nflystudio/net/TitleBean;
    const-string v106, "title"

    move-object/from16 v0, v85

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v101

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/TitleBean;->setTitle(Ljava/lang/String;)V

    .line 123
    const-string v106, "url"

    move-object/from16 v0, v85

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v101

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/TitleBean;->setAddress(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, v102

    move-object/from16 v1, v101

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v106, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v101 .. v101}, Lcom/nflystudio/net/TitleBean;->toString()Ljava/lang/String;

    move-result-object v107

    invoke-virtual/range {v106 .. v107}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v44, v44, 0x1

    goto :goto_6

    .line 132
    .end local v44    # "i":I
    .end local v58    # "jsonArray3":Lorg/json/JSONArray;
    .end local v75    # "length2":I
    .end local v85    # "o":Lorg/json/JSONObject;
    .end local v101    # "tb":Lcom/nflystudio/net/TitleBean;
    .end local v102    # "tbList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/TitleBean;>;"
    :pswitch_7
    new-instance v64, Lorg/json/JSONObject;

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v64    # "jsonObject":Lorg/json/JSONObject;
    new-instance v13, Lcom/nflystudio/net/JavaBeanPersonCenter;

    invoke-direct {v13}, Lcom/nflystudio/net/JavaBeanPersonCenter;-><init>()V

    .line 134
    .local v13, "bean":Lcom/nflystudio/net/JavaBeanPersonCenter;
    const-string v106, "status"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 135
    .local v98, "state":Ljava/lang/String;
    move-object/from16 v0, v98

    invoke-virtual {v13, v0}, Lcom/nflystudio/net/JavaBeanPersonCenter;->setStatus(Ljava/lang/String;)V

    .line 136
    const-string v106, "1"

    move-object/from16 v0, v98

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_8

    .line 137
    const-string v106, "time"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v13, v0}, Lcom/nflystudio/net/JavaBeanPersonCenter;->setTime(Ljava/lang/String;)V

    .line 138
    const-string v106, "data"

    move-object/from16 v0, v64

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 139
    .local v23, "dataObject":Lorg/json/JSONObject;
    const-string v106, "code"

    move-object/from16 v0, v23

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v13, v0}, Lcom/nflystudio/net/JavaBeanPersonCenter;->setCode(Ljava/lang/String;)V

    .line 140
    const-string v106, "data"

    move-object/from16 v0, v23

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v13, v0}, Lcom/nflystudio/net/JavaBeanPersonCenter;->setData(Ljava/lang/String;)V

    .line 141
    const-string v106, "msg"

    move-object/from16 v0, v23

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v13, v0}, Lcom/nflystudio/net/JavaBeanPersonCenter;->setMsg(Ljava/lang/String;)V

    .line 143
    .end local v23    # "dataObject":Lorg/json/JSONObject;
    :cond_8
    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/nflystudio/net/BaseRespone;->javaBean:Lcom/nflystudio/net/JavaBeanPersonCenter;

    goto/16 :goto_0

    .line 146
    .end local v13    # "bean":Lcom/nflystudio/net/JavaBeanPersonCenter;
    .end local v64    # "jsonObject":Lorg/json/JSONObject;
    .end local v98    # "state":Ljava/lang/String;
    :pswitch_8
    new-instance v62, Lorg/json/JSONObject;

    move-object/from16 v0, v62

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    .local v62, "jsonObj1":Lorg/json/JSONObject;
    const-string v106, "request"

    move-object/from16 v0, v62

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v68

    .line 148
    .local v68, "jsonObject5":Lorg/json/JSONObject;
    const-string v106, "code"

    move-object/from16 v0, v68

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 149
    .local v17, "code":Ljava/lang/String;
    const-string v106, "msg"

    move-object/from16 v0, v68

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 150
    .local v79, "msg":Ljava/lang/String;
    new-instance v20, Lcom/nflystudio/net/CollectResult;

    invoke-direct/range {v20 .. v20}, Lcom/nflystudio/net/CollectResult;-><init>()V

    .line 151
    .local v20, "cr":Lcom/nflystudio/net/CollectResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectResult;->setCode(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v20

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectResult;->setMsg(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 156
    .end local v17    # "code":Ljava/lang/String;
    .end local v20    # "cr":Lcom/nflystudio/net/CollectResult;
    .end local v62    # "jsonObj1":Lorg/json/JSONObject;
    .end local v68    # "jsonObject5":Lorg/json/JSONObject;
    .end local v79    # "msg":Ljava/lang/String;
    :pswitch_9
    new-instance v63, Lorg/json/JSONObject;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v63, "jsonObj2":Lorg/json/JSONObject;
    const-string v106, "request"

    move-object/from16 v0, v63

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v69

    .line 158
    .local v69, "jsonObject6":Lorg/json/JSONObject;
    const-string v106, "code"

    move-object/from16 v0, v69

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 159
    .local v18, "code1":Ljava/lang/String;
    const-string v106, "msg"

    move-object/from16 v0, v69

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 160
    .local v80, "msg1":Ljava/lang/String;
    new-instance v21, Lcom/nflystudio/net/CollectResult;

    invoke-direct/range {v21 .. v21}, Lcom/nflystudio/net/CollectResult;-><init>()V

    .line 161
    .local v21, "cr1":Lcom/nflystudio/net/CollectResult;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectResult;->setCode(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, v21

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectResult;->setMsg(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 167
    .end local v18    # "code1":Ljava/lang/String;
    .end local v21    # "cr1":Lcom/nflystudio/net/CollectResult;
    .end local v63    # "jsonObj2":Lorg/json/JSONObject;
    .end local v69    # "jsonObject6":Lorg/json/JSONObject;
    .end local v80    # "msg1":Ljava/lang/String;
    :pswitch_a
    new-instance v88, Lorg/json/JSONObject;

    move-object/from16 v0, v88

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v88, "obj1":Lorg/json/JSONObject;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v9, "articleList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/MyArticle;>;"
    const-string v106, "request"

    move-object/from16 v0, v88

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v67

    .line 170
    .local v67, "jsonObject4":Lorg/json/JSONObject;
    const-string v106, "code"

    move-object/from16 v0, v67

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    const-string v107, "1"

    invoke-virtual/range {v106 .. v107}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_a

    .line 171
    const-string v106, "data"

    move-object/from16 v0, v67

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v57

    .line 172
    .local v57, "jsonArray2":Lorg/json/JSONArray;
    invoke-virtual/range {v57 .. v57}, Lorg/json/JSONArray;->length()I

    move-result v74

    .line 173
    .local v74, "length1":I
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_7
    move/from16 v0, v44

    move/from16 v1, v74

    if-lt v0, v1, :cond_9

    .line 192
    .end local v44    # "i":I
    .end local v57    # "jsonArray2":Lorg/json/JSONArray;
    .end local v74    # "length1":I
    :goto_8
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 174
    .restart local v44    # "i":I
    .restart local v57    # "jsonArray2":Lorg/json/JSONArray;
    .restart local v74    # "length1":I
    :cond_9
    new-instance v8, Lcom/nflystudio/net/MyArticle;

    invoke-direct {v8}, Lcom/nflystudio/net/MyArticle;-><init>()V

    .line 175
    .local v8, "article":Lcom/nflystudio/net/MyArticle;
    move-object/from16 v0, v57

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lorg/json/JSONObject;

    .line 176
    .local v89, "object":Lorg/json/JSONObject;
    const-string v106, "addstr"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setAddstr(Ljava/lang/String;)V

    .line 177
    const-string v106, "addtype"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setAddtype(Ljava/lang/String;)V

    .line 178
    const-string v106, "id"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setId(Ljava/lang/String;)V

    .line 179
    const-string v106, "phone"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setPhone(Ljava/lang/String;)V

    .line 180
    const-string v106, "data"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v65

    .line 181
    .local v65, "jsonObject2":Lorg/json/JSONObject;
    const-string v106, "aid"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setAid(Ljava/lang/String;)V

    .line 182
    const-string v106, "description"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setDescription(Ljava/lang/String;)V

    .line 183
    const-string v106, "litpic"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setLitpic(Ljava/lang/String;)V

    .line 184
    const-string v106, "senddate"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setSenddate(Ljava/lang/String;)V

    .line 185
    const-string v106, "title"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setTitle(Ljava/lang/String;)V

    .line 186
    const-string v106, "url"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    invoke-virtual {v8, v0}, Lcom/nflystudio/net/MyArticle;->setUrl(Ljava/lang/String;)V

    .line 187
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_7

    .line 190
    .end local v8    # "article":Lcom/nflystudio/net/MyArticle;
    .end local v44    # "i":I
    .end local v57    # "jsonArray2":Lorg/json/JSONArray;
    .end local v65    # "jsonObject2":Lorg/json/JSONObject;
    .end local v74    # "length1":I
    .end local v89    # "object":Lorg/json/JSONObject;
    :cond_a
    const/16 v106, -0x1

    move/from16 v0, v106

    move-object/from16 v1, p1

    iput v0, v1, Lcom/nflystudio/net/BaseRespone;->status:I

    goto/16 :goto_8

    .line 195
    .end local v9    # "articleList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/MyArticle;>;"
    .end local v67    # "jsonObject4":Lorg/json/JSONObject;
    .end local v88    # "obj1":Lorg/json/JSONObject;
    :pswitch_b
    new-instance v87, Lorg/json/JSONObject;

    move-object/from16 v0, v87

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .local v87, "obj":Lorg/json/JSONObject;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v27, "gameList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/CollectGame;>;"
    const-string v106, "request"

    move-object/from16 v0, v87

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v66

    .line 198
    .local v66, "jsonObject3":Lorg/json/JSONObject;
    const-string v106, "code"

    move-object/from16 v0, v66

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    const-string v107, "1"

    invoke-virtual/range {v106 .. v107}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_c

    .line 199
    const-string v106, "data"

    move-object/from16 v0, v66

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v56

    .line 200
    .local v56, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {v56 .. v56}, Lorg/json/JSONArray;->length()I

    move-result v73

    .line 201
    .local v73, "length":I
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_9
    move/from16 v0, v44

    move/from16 v1, v73

    if-lt v0, v1, :cond_b

    .line 229
    .end local v44    # "i":I
    .end local v56    # "jsonArray":Lorg/json/JSONArray;
    .end local v73    # "length":I
    :goto_a
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 202
    .restart local v44    # "i":I
    .restart local v56    # "jsonArray":Lorg/json/JSONArray;
    .restart local v73    # "length":I
    :cond_b
    new-instance v26, Lcom/nflystudio/net/CollectGame;

    invoke-direct/range {v26 .. v26}, Lcom/nflystudio/net/CollectGame;-><init>()V

    .line 203
    .local v26, "game":Lcom/nflystudio/net/CollectGame;
    move-object/from16 v0, v56

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lorg/json/JSONObject;

    .line 204
    .restart local v89    # "object":Lorg/json/JSONObject;
    const-string v106, "addstr"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAddstr(Ljava/lang/String;)V

    .line 205
    const-string v106, "addtype"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAddtype(Ljava/lang/String;)V

    .line 206
    const-string v106, "id"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setId(Ljava/lang/String;)V

    .line 207
    const-string v106, "phone"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setPhone(Ljava/lang/String;)V

    .line 208
    const-string v106, "data"

    move-object/from16 v0, v89

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v65

    .line 209
    .restart local v65    # "jsonObject2":Lorg/json/JSONObject;
    const-string v106, "android_apkname"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAndroid_apkname(Ljava/lang/String;)V

    .line 210
    const-string v106, "android_down"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAndroid_down(Ljava/lang/String;)V

    .line 211
    const-string v106, "android_icon"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAndroid_icon(Ljava/lang/String;)V

    .line 212
    const-string v106, "android_size"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAndroid_size(Ljava/lang/String;)V

    .line 213
    const-string v106, "android_update"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAndroid_update(Ljava/lang/String;)V

    .line 214
    const-string v106, "android_ver"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setAndroid_ver(Ljava/lang/String;)V

    .line 215
    const-string v106, "click"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setClick(Ljava/lang/String;)V

    .line 216
    const-string v106, "description"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setDescription(Ljava/lang/String;)V

    .line 217
    const-string v106, "dtid"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setDtid(Ljava/lang/String;)V

    .line 218
    const-string v106, "flag"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setFlag(Ljava/lang/String;)V

    .line 219
    const-string v106, "grade"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setGrade(Ljava/lang/String;)V

    .line 220
    const-string v106, "litpic"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setLitpic(Ljava/lang/String;)V

    .line 221
    const-string v106, "star"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setStar(Ljava/lang/String;)V

    .line 222
    const-string v106, "title"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setTitle(Ljava/lang/String;)V

    .line 223
    const-string v106, "url"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v26

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/CollectGame;->setUrl(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_9

    .line 227
    .end local v26    # "game":Lcom/nflystudio/net/CollectGame;
    .end local v44    # "i":I
    .end local v56    # "jsonArray":Lorg/json/JSONArray;
    .end local v65    # "jsonObject2":Lorg/json/JSONObject;
    .end local v73    # "length":I
    .end local v89    # "object":Lorg/json/JSONObject;
    :cond_c
    const/16 v106, -0x1

    move/from16 v0, v106

    move-object/from16 v1, p1

    iput v0, v1, Lcom/nflystudio/net/BaseRespone;->status:I

    goto/16 :goto_a

    .line 232
    .end local v27    # "gameList":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/net/CollectGame;>;"
    .end local v66    # "jsonObject3":Lorg/json/JSONObject;
    .end local v87    # "obj":Lorg/json/JSONObject;
    :pswitch_c
    new-instance v61, Lorg/json/JSONObject;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    .local v61, "jsonObj":Lorg/json/JSONObject;
    new-instance v105, Lcom/nflystudio/net/UserBean;

    invoke-direct/range {v105 .. v105}, Lcom/nflystudio/net/UserBean;-><init>()V

    .line 234
    .local v105, "ub":Lcom/nflystudio/net/UserBean;
    const-string v106, "status"

    move-object/from16 v0, v61

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 235
    .local v100, "status1":Ljava/lang/String;
    move-object/from16 v0, v105

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/UserBean;->setStatus(Ljava/lang/String;)V

    .line 236
    const-string v106, "1"

    move-object/from16 v0, v100

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_1

    .line 237
    const-string v106, "time"

    move-object/from16 v0, v61

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setTime(Ljava/lang/String;)V

    .line 238
    const-string v106, "data"

    move-object/from16 v0, v61

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 239
    .restart local v23    # "dataObject":Lorg/json/JSONObject;
    const-string v106, "msg"

    move-object/from16 v0, v23

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setMsg(Ljava/lang/String;)V

    .line 240
    const-string v106, "code"

    move-object/from16 v0, v23

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 241
    .local v14, "c":Ljava/lang/String;
    move-object/from16 v0, v105

    invoke-virtual {v0, v14}, Lcom/nflystudio/net/UserBean;->setCode(Ljava/lang/String;)V

    .line 242
    const-string v106, "0"

    move-object/from16 v0, v106

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_d

    .line 243
    const-string v106, "data"

    move-object/from16 v0, v23

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v65

    .line 244
    .restart local v65    # "jsonObject2":Lorg/json/JSONObject;
    const-string v106, "token"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setToken(Ljava/lang/String;)V

    .line 245
    const-string v106, "username"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setUserName(Ljava/lang/String;)V

    .line 246
    const-string v106, "lastlogintime"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setLastLoginTime(Ljava/lang/String;)V

    .line 247
    const-string v106, "litpic"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setLitpic(Ljava/lang/String;)V

    .line 248
    const-string v106, "level"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setLevel(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, v105

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 251
    .end local v65    # "jsonObject2":Lorg/json/JSONObject;
    :cond_d
    const-string v106, "data"

    move-object/from16 v0, v23

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v65

    .line 252
    .restart local v65    # "jsonObject2":Lorg/json/JSONObject;
    const-string v106, "litpic"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setLitpic(Ljava/lang/String;)V

    .line 253
    const-string v106, "level"

    move-object/from16 v0, v65

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v105 .. v106}, Lcom/nflystudio/net/UserBean;->setLevel(Ljava/lang/String;)V

    .line 254
    const/16 v106, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    .line 268
    .end local v14    # "c":Ljava/lang/String;
    .end local v23    # "dataObject":Lorg/json/JSONObject;
    .end local v61    # "jsonObj":Lorg/json/JSONObject;
    .end local v65    # "jsonObject2":Lorg/json/JSONObject;
    .end local v100    # "status1":Ljava/lang/String;
    .end local v105    # "ub":Lcom/nflystudio/net/UserBean;
    .restart local v6    # "arr":Lorg/json/JSONArray;
    .restart local v44    # "i":I
    .restart local v104    # "toppicdata":Lcom/nflystudio/net/TopPicData;
    :cond_e
    new-instance v91, Lcom/nflystudio/net/TopPicDataItem;

    invoke-direct/range {v91 .. v91}, Lcom/nflystudio/net/TopPicDataItem;-><init>()V

    .line 269
    .local v91, "pitem":Lcom/nflystudio/net/TopPicDataItem;
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Lorg/json/JSONObject;

    .line 270
    .local v103, "temp":Lorg/json/JSONObject;
    const-string v106, "aid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_f

    .line 271
    const-string v106, "aid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v91

    iput-object v0, v1, Lcom/nflystudio/net/TopPicDataItem;->aid:Ljava/lang/String;

    .line 273
    :cond_f
    const-string v106, "litpic"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_10

    .line 274
    const-string v106, "litpic"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v91

    iput-object v0, v1, Lcom/nflystudio/net/TopPicDataItem;->litpic:Ljava/lang/String;

    .line 276
    :cond_10
    const-string v106, "title"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_11

    .line 277
    const-string v106, "title"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v91

    iput-object v0, v1, Lcom/nflystudio/net/TopPicDataItem;->title:Ljava/lang/String;

    .line 279
    :cond_11
    const-string v106, "dtid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_12

    .line 280
    const-string v106, "dtid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v91

    iput-object v0, v1, Lcom/nflystudio/net/TopPicDataItem;->dtid:Ljava/lang/String;

    .line 282
    :cond_12
    move-object/from16 v0, v104

    iget-object v0, v0, Lcom/nflystudio/net/TopPicData;->toppicdatalist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_1

    .line 289
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v91    # "pitem":Lcom/nflystudio/net/TopPicDataItem;
    .end local v103    # "temp":Lorg/json/JSONObject;
    .end local v104    # "toppicdata":Lcom/nflystudio/net/TopPicData;
    :pswitch_d
    new-instance v32, Lcom/nflystudio/net/GameSortData;

    invoke-direct/range {v32 .. v32}, Lcom/nflystudio/net/GameSortData;-><init>()V

    .line 290
    .local v32, "gamesortdata":Lcom/nflystudio/net/GameSortData;
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/nflystudio/net/GameSortData;->gamesortlist:Ljava/util/ArrayList;

    .line 291
    const/4 v6, 0x0

    .line 292
    .restart local v6    # "arr":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "arr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v6    # "arr":Lorg/json/JSONArray;
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_13

    .line 344
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 294
    :cond_13
    new-instance v33, Lcom/nflystudio/net/GameSortItem;

    invoke-direct/range {v33 .. v33}, Lcom/nflystudio/net/GameSortItem;-><init>()V

    .line 295
    .local v33, "gamesortitem":Lcom/nflystudio/net/GameSortItem;
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Lorg/json/JSONObject;

    .line 296
    .restart local v103    # "temp":Lorg/json/JSONObject;
    const-string v106, "type"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_14

    .line 297
    const-string v106, "type"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/nflystudio/net/GameSortItem;->sortname:Ljava/lang/String;

    .line 299
    :cond_14
    const-string v106, "rows"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_15

    .line 300
    const-string v106, "rows"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/nflystudio/net/GameSortItem;->count:Ljava/lang/String;

    .line 302
    :cond_15
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/nflystudio/net/GameSortData;->gamesortlist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v106, "items"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 305
    .local v30, "gamelist":Lorg/json/JSONArray;
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/nflystudio/net/GameSortItem;->gamelist:Ljava/util/ArrayList;

    .line 306
    if-eqz v30, :cond_16

    .line 307
    const/16 v49, 0x0

    .local v49, "j":I
    :goto_c
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_17

    .line 293
    .end local v49    # "j":I
    :cond_16
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_b

    .line 308
    .restart local v49    # "j":I
    :cond_17
    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/json/JSONObject;

    .line 309
    .local v38, "gitem":Lorg/json/JSONObject;
    new-instance v29, Lcom/nflystudio/Service/GameInfoItem;

    invoke-direct/range {v29 .. v29}, Lcom/nflystudio/Service/GameInfoItem;-><init>()V

    .line 311
    .local v29, "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_18

    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_18

    .line 312
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    .line 314
    :cond_18
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_19

    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_19

    .line 315
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    .line 318
    :cond_19
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1a

    .line 319
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    .line 321
    :cond_1a
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1b

    .line 322
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    .line 324
    :cond_1b
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1c

    .line 325
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    .line 327
    :cond_1c
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1d

    .line 328
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 330
    :cond_1d
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1e

    .line 331
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    .line 333
    :cond_1e
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1f

    .line 334
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    .line 336
    :cond_1f
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_20

    .line 337
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    .line 339
    :cond_20
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/nflystudio/net/GameSortItem;->gamelist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_c

    .line 348
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v29    # "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    .end local v30    # "gamelist":Lorg/json/JSONArray;
    .end local v32    # "gamesortdata":Lcom/nflystudio/net/GameSortData;
    .end local v33    # "gamesortitem":Lcom/nflystudio/net/GameSortItem;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v44    # "i":I
    .end local v49    # "j":I
    .end local v103    # "temp":Lorg/json/JSONObject;
    :pswitch_e
    new-instance v31, Lcom/nflystudio/net/GameSortItem;

    invoke-direct/range {v31 .. v31}, Lcom/nflystudio/net/GameSortItem;-><init>()V

    .line 349
    .local v31, "gamesitem":Lcom/nflystudio/net/GameSortItem;
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/nflystudio/net/GameSortItem;->gamelist:Ljava/util/ArrayList;

    .line 350
    const/4 v6, 0x0

    .line 351
    .restart local v6    # "arr":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "arr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v6    # "arr":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-lez v106, :cond_23

    .line 353
    const/16 v106, 0x0

    move/from16 v0, v106

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Lorg/json/JSONObject;

    .line 354
    .restart local v103    # "temp":Lorg/json/JSONObject;
    const-string v106, "type"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_21

    .line 355
    const-string v106, "type"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/nflystudio/net/GameSortItem;->sortname:Ljava/lang/String;

    .line 357
    :cond_21
    const-string v106, "rows"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_22

    .line 358
    const-string v106, "rows"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/nflystudio/net/GameSortItem;->count:Ljava/lang/String;

    .line 361
    :cond_22
    const-string v106, "items"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 362
    .restart local v30    # "gamelist":Lorg/json/JSONArray;
    if-eqz v30, :cond_23

    .line 363
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_d
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_24

    .line 412
    .end local v30    # "gamelist":Lorg/json/JSONArray;
    .end local v49    # "j":I
    .end local v103    # "temp":Lorg/json/JSONObject;
    :cond_23
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 364
    .restart local v30    # "gamelist":Lorg/json/JSONArray;
    .restart local v49    # "j":I
    .restart local v103    # "temp":Lorg/json/JSONObject;
    :cond_24
    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/json/JSONObject;

    .line 365
    .restart local v38    # "gitem":Lorg/json/JSONObject;
    new-instance v29, Lcom/nflystudio/Service/GameInfoItem;

    invoke-direct/range {v29 .. v29}, Lcom/nflystudio/Service/GameInfoItem;-><init>()V

    .line 367
    .restart local v29    # "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_25

    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_25

    .line 368
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    .line 370
    :cond_25
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_26

    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_26

    .line 371
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    .line 374
    :cond_26
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_27

    .line 375
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    .line 377
    :cond_27
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_28

    .line 378
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    .line 380
    :cond_28
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_29

    .line 381
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    .line 383
    :cond_29
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_2a

    .line 384
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 386
    :cond_2a
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_2b

    .line 387
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    .line 389
    :cond_2b
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_2c

    .line 390
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    .line 392
    :cond_2c
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_2d

    .line 393
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    .line 407
    :cond_2d
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/nflystudio/net/GameSortItem;->gamelist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_d

    .line 424
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v29    # "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    .end local v30    # "gamelist":Lorg/json/JSONArray;
    .end local v31    # "gamesitem":Lcom/nflystudio/net/GameSortItem;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v49    # "j":I
    .end local v103    # "temp":Lorg/json/JSONObject;
    :pswitch_f
    new-instance v31, Lcom/nflystudio/net/GameList;

    invoke-direct/range {v31 .. v31}, Lcom/nflystudio/net/GameList;-><init>()V

    .line 425
    .local v31, "gamesitem":Lcom/nflystudio/net/GameList;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0xa

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/nflystudio/net/GameList;->gamelist:Ljava/util/ArrayList;

    .line 426
    new-instance v106, Lorg/json/JSONObject;

    move-object/from16 v0, v106

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v107, "items"

    invoke-virtual/range {v106 .. v107}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 427
    .restart local v30    # "gamelist":Lorg/json/JSONArray;
    if-eqz v30, :cond_2e

    .line 428
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_e
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_2f

    .line 476
    .end local v49    # "j":I
    :cond_2e
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 429
    .restart local v49    # "j":I
    :cond_2f
    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/json/JSONObject;

    .line 430
    .restart local v38    # "gitem":Lorg/json/JSONObject;
    new-instance v29, Lcom/nflystudio/Service/GameInfoItem;

    invoke-direct/range {v29 .. v29}, Lcom/nflystudio/Service/GameInfoItem;-><init>()V

    .line 431
    .restart local v29    # "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_30

    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_30

    .line 432
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    .line 434
    :cond_30
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_31

    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_31

    .line 435
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    .line 437
    :cond_31
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_32

    .line 438
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    .line 440
    :cond_32
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_33

    .line 441
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    .line 443
    :cond_33
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_34

    .line 444
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 446
    :cond_34
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_35

    .line 447
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    .line 449
    :cond_35
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_36

    .line 450
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    .line 452
    :cond_36
    const-string v106, "gametype"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_37

    .line 453
    const-string v106, "gametype"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->type:Ljava/lang/String;

    .line 455
    :cond_37
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_38

    .line 456
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    .line 458
    :cond_38
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_39

    .line 459
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    .line 461
    :cond_39
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_3a

    .line 462
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    .line 463
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    move-object/from16 v106, v0

    const-string v107, " "

    const-string v108, ""

    invoke-virtual/range {v106 .. v108}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    .line 465
    :cond_3a
    const-string v106, "star"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_3b

    .line 466
    const-string v106, "star"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->star:Ljava/lang/String;

    .line 473
    :cond_3b
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/nflystudio/net/GameList;->gamelist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_e

    .line 481
    .end local v29    # "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    .end local v30    # "gamelist":Lorg/json/JSONArray;
    .end local v31    # "gamesitem":Lcom/nflystudio/net/GameList;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v49    # "j":I
    :pswitch_10
    new-instance v34, Lcom/nflystudio/net/GameDetaile;

    invoke-direct/range {v34 .. v34}, Lcom/nflystudio/net/GameDetaile;-><init>()V

    .line 482
    .local v34, "gdetaile":Lcom/nflystudio/net/GameDetaile;
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 483
    .local v24, "detiledes":Lorg/json/JSONObject;
    const-string v106, "items"

    move-object/from16 v0, v24

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 484
    .restart local v30    # "gamelist":Lorg/json/JSONArray;
    if-eqz v30, :cond_46

    .line 485
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-lez v106, :cond_46

    .line 486
    const/16 v106, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/json/JSONObject;

    .line 487
    .restart local v38    # "gitem":Lorg/json/JSONObject;
    const-string v106, "type"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->gametype:Ljava/lang/String;

    .line 488
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->dtid:Ljava/lang/String;

    .line 489
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_3c

    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_3c

    .line 490
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v34

    iput v0, v1, Lcom/nflystudio/net/GameDetaile;->filesize:I

    .line 493
    :cond_3c
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_3d

    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_3d

    .line 494
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v34

    iput v0, v1, Lcom/nflystudio/net/GameDetaile;->downcount:I

    .line 497
    :cond_3d
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_3e

    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_3e

    .line 498
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->title:Ljava/lang/String;

    .line 500
    :cond_3e
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_3f

    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_3f

    .line 501
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->android_icon:Ljava/lang/String;

    .line 503
    :cond_3f
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_40

    .line 504
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->android_ver:Ljava/lang/String;

    .line 506
    :cond_40
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_41

    .line 507
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->android_update:Ljava/lang/String;

    .line 509
    :cond_41
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_42

    .line 510
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->android_down:Ljava/lang/String;

    .line 512
    :cond_42
    const-string v106, "litpic"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_43

    .line 513
    const-string v106, "litpic"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->litpic:Ljava/lang/String;

    .line 515
    :cond_43
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_44

    .line 516
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->android_apkname:Ljava/lang/String;

    .line 518
    :cond_44
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_45

    .line 519
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->description:Ljava/lang/String;

    .line 522
    :cond_45
    const-string v106, "gift"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_46

    const-string v106, "gift"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_46

    .line 523
    const-string v106, "gift"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    .line 524
    .local v36, "gfdetle":Lorg/json/JSONObject;
    const-string v106, "action"

    move-object/from16 v0, v36

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_46

    .line 525
    const-string v106, "action"

    move-object/from16 v0, v36

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 526
    .local v35, "gfarray":Lorg/json/JSONArray;
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-lez v106, :cond_46

    .line 527
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/nflystudio/net/GameDetaile;->gfitlist:Ljava/util/ArrayList;

    .line 528
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_f
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_47

    .line 551
    .end local v35    # "gfarray":Lorg/json/JSONArray;
    .end local v36    # "gfdetle":Lorg/json/JSONObject;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v44    # "i":I
    :cond_46
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 529
    .restart local v35    # "gfarray":Lorg/json/JSONArray;
    .restart local v36    # "gfdetle":Lorg/json/JSONObject;
    .restart local v38    # "gitem":Lorg/json/JSONObject;
    .restart local v44    # "i":I
    :cond_47
    move-object/from16 v0, v35

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lorg/json/JSONObject;

    .line 530
    .local v39, "gitemgf":Lorg/json/JSONObject;
    new-instance v48, Lcom/nflystudio/net/IssueNumItem;

    invoke-direct/range {v48 .. v48}, Lcom/nflystudio/net/IssueNumItem;-><init>()V

    .line 531
    .local v48, "iuitem":Lcom/nflystudio/net/IssueNumItem;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/nflystudio/net/GameDetaile;->dtid:Ljava/lang/String;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->gameid:Ljava/lang/String;

    .line 532
    const-string v106, "name"

    move-object/from16 v0, v39

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->gamename:Ljava/lang/String;

    .line 533
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/nflystudio/net/GameDetaile;->android_icon:Ljava/lang/String;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->iconurl:Ljava/lang/String;

    .line 534
    const-string v106, "startdate"

    move-object/from16 v0, v39

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->times:Ljava/lang/String;

    .line 535
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/nflystudio/net/GameDetaile;->gametype:Ljava/lang/String;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->type:Ljava/lang/String;

    .line 538
    const-string v106, "name"

    move-object/from16 v0, v39

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->rbname:Ljava/lang/String;

    .line 539
    const-string v106, "remain"

    move-object/from16 v0, v39

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->remain:Ljava/lang/String;

    .line 540
    const-string v106, "url"

    move-object/from16 v0, v39

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_48

    .line 541
    const-string v106, "url"

    move-object/from16 v0, v39

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->fahaourl:Ljava/lang/String;

    .line 543
    :cond_48
    const-string v106, "description"

    move-object/from16 v0, v39

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->description:Ljava/lang/String;

    .line 544
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/nflystudio/net/GameDetaile;->gfitlist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_f

    .line 555
    .end local v24    # "detiledes":Lorg/json/JSONObject;
    .end local v30    # "gamelist":Lorg/json/JSONArray;
    .end local v34    # "gdetaile":Lcom/nflystudio/net/GameDetaile;
    .end local v35    # "gfarray":Lorg/json/JSONArray;
    .end local v36    # "gfdetle":Lorg/json/JSONObject;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v39    # "gitemgf":Lorg/json/JSONObject;
    .end local v44    # "i":I
    .end local v48    # "iuitem":Lcom/nflystudio/net/IssueNumItem;
    :pswitch_11
    new-instance v104, Lcom/nflystudio/net/TopPicData;

    invoke-direct/range {v104 .. v104}, Lcom/nflystudio/net/TopPicData;-><init>()V

    .line 556
    .restart local v104    # "toppicdata":Lcom/nflystudio/net/TopPicData;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0x4

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v104

    iput-object v0, v1, Lcom/nflystudio/net/TopPicData;->toppicdatalist:Ljava/util/ArrayList;

    .line 557
    new-instance v106, Lorg/json/JSONObject;

    move-object/from16 v0, v106

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v107, "imgurls"

    invoke-virtual/range {v106 .. v107}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 558
    .restart local v30    # "gamelist":Lorg/json/JSONArray;
    if-eqz v30, :cond_49

    .line 559
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_10
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_4a

    .line 565
    .end local v44    # "i":I
    :cond_49
    move-object/from16 v0, v104

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 560
    .restart local v44    # "i":I
    :cond_4a
    new-instance v91, Lcom/nflystudio/net/TopPicDataItem;

    invoke-direct/range {v91 .. v91}, Lcom/nflystudio/net/TopPicDataItem;-><init>()V

    .line 561
    .restart local v91    # "pitem":Lcom/nflystudio/net/TopPicDataItem;
    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v91

    iput-object v0, v1, Lcom/nflystudio/net/TopPicDataItem;->litpic:Ljava/lang/String;

    .line 562
    move-object/from16 v0, v104

    iget-object v0, v0, Lcom/nflystudio/net/TopPicData;->toppicdatalist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v44, v44, 0x1

    goto :goto_10

    .line 570
    .end local v30    # "gamelist":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v91    # "pitem":Lcom/nflystudio/net/TopPicDataItem;
    .end local v104    # "toppicdata":Lcom/nflystudio/net/TopPicData;
    :pswitch_12
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v6    # "arr":Lorg/json/JSONArray;
    if-eqz v6, :cond_4b

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-gtz v106, :cond_4c

    .line 572
    :cond_4b
    const/16 v106, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 575
    :cond_4c
    new-instance v31, Lcom/nflystudio/net/GameList;

    invoke-direct/range {v31 .. v31}, Lcom/nflystudio/net/GameList;-><init>()V

    .line 576
    .restart local v31    # "gamesitem":Lcom/nflystudio/net/GameList;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0xa

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/nflystudio/net/GameList;->gamelist:Ljava/util/ArrayList;

    .line 577
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_11
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_4d

    .line 618
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 578
    :cond_4d
    move/from16 v0, v49

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/json/JSONObject;

    .line 579
    .restart local v38    # "gitem":Lorg/json/JSONObject;
    if-eqz v38, :cond_59

    .line 580
    new-instance v29, Lcom/nflystudio/Service/GameInfoItem;

    invoke-direct/range {v29 .. v29}, Lcom/nflystudio/Service/GameInfoItem;-><init>()V

    .line 581
    .restart local v29    # "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_4e

    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_4e

    .line 582
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    .line 584
    :cond_4e
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_4f

    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_4f

    .line 585
    const-string v106, "click"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v29

    iput v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    .line 587
    :cond_4f
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_50

    .line 588
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    .line 590
    :cond_50
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_51

    .line 591
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    .line 593
    :cond_51
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_52

    .line 594
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 596
    :cond_52
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_53

    .line 597
    const-string v106, "android_ver"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    .line 599
    :cond_53
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_54

    .line 600
    const-string v106, "android_update"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    .line 602
    :cond_54
    const-string v106, "gametype"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_55

    .line 603
    const-string v106, "gametype"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->type:Ljava/lang/String;

    .line 605
    :cond_55
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_56

    .line 606
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    .line 608
    :cond_56
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_57

    .line 609
    const-string v106, "android_apkname"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    .line 611
    :cond_57
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_58

    .line 612
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    .line 614
    :cond_58
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/nflystudio/net/GameList;->gamelist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    .end local v29    # "gameinfoitem":Lcom/nflystudio/Service/GameInfoItem;
    :cond_59
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_11

    .line 624
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v31    # "gamesitem":Lcom/nflystudio/net/GameList;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v49    # "j":I
    :pswitch_13
    new-instance v81, Lcom/nflystudio/net/NewsData;

    invoke-direct/range {v81 .. v81}, Lcom/nflystudio/net/NewsData;-><init>()V

    .line 627
    .local v81, "newsdata":Lcom/nflystudio/net/NewsData;
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 628
    .restart local v6    # "arr":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-gtz v106, :cond_5a

    .line 629
    const/16 v106, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 632
    :cond_5a
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0xa

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v81

    iput-object v0, v1, Lcom/nflystudio/net/NewsData;->newsdatalist:Ljava/util/ArrayList;

    .line 633
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_12
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_5b

    .line 647
    move-object/from16 v0, v81

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 634
    :cond_5b
    new-instance v83, Lcom/nflystudio/net/NewsDataItem;

    invoke-direct/range {v83 .. v83}, Lcom/nflystudio/net/NewsDataItem;-><init>()V

    .line 635
    .local v83, "nitem":Lcom/nflystudio/net/NewsDataItem;
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Lorg/json/JSONObject;

    .line 636
    .restart local v103    # "temp":Lorg/json/JSONObject;
    const-string v106, "aid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->aid:Ljava/lang/String;

    .line 637
    const-string v106, "litpic"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->litpic:Ljava/lang/String;

    .line 638
    const-string v106, "title"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->title:Ljava/lang/String;

    .line 639
    const-string v106, "description"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->description:Ljava/lang/String;

    .line 640
    const-string v106, "shorttitle"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->shorttitle:Ljava/lang/String;

    .line 641
    const-string v106, "pubdate"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->pubdate:Ljava/lang/String;

    .line 642
    const-string v106, "flag"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->flag:Ljava/lang/String;

    .line 644
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/nflystudio/net/NewsData;->newsdatalist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_12

    .line 659
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v81    # "newsdata":Lcom/nflystudio/net/NewsData;
    .end local v83    # "nitem":Lcom/nflystudio/net/NewsDataItem;
    .end local v103    # "temp":Lorg/json/JSONObject;
    :pswitch_14
    new-instance v51, Lorg/json/JSONObject;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 660
    .local v51, "jbo":Lorg/json/JSONObject;
    new-instance v81, Lcom/nflystudio/net/NewsData;

    invoke-direct/range {v81 .. v81}, Lcom/nflystudio/net/NewsData;-><init>()V

    .line 661
    .restart local v81    # "newsdata":Lcom/nflystudio/net/NewsData;
    const-string v106, "state"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_5e

    .line 662
    const-string v106, "time"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v81

    iput-object v0, v1, Lcom/nflystudio/net/NewsData;->serverTime:Ljava/lang/String;

    .line 663
    const-string v106, "state"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v81

    iput-object v0, v1, Lcom/nflystudio/net/NewsData;->status:Ljava/lang/String;

    .line 664
    const-string v106, "items"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 665
    .restart local v6    # "arr":Lorg/json/JSONArray;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0xa

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v81

    iput-object v0, v1, Lcom/nflystudio/net/NewsData;->newsdatalist:Ljava/util/ArrayList;

    .line 666
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-gtz v106, :cond_5c

    .line 667
    const/16 v106, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 670
    :cond_5c
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_13
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_5d

    .line 687
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v44    # "i":I
    :goto_14
    move-object/from16 v0, v81

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 671
    .restart local v6    # "arr":Lorg/json/JSONArray;
    .restart local v44    # "i":I
    :cond_5d
    new-instance v83, Lcom/nflystudio/net/NewsDataItem;

    invoke-direct/range {v83 .. v83}, Lcom/nflystudio/net/NewsDataItem;-><init>()V

    .line 672
    .restart local v83    # "nitem":Lcom/nflystudio/net/NewsDataItem;
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Lorg/json/JSONObject;

    .line 673
    .restart local v103    # "temp":Lorg/json/JSONObject;
    const-string v106, "aid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->aid:Ljava/lang/String;

    .line 674
    const-string v106, "litpic"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->litpic:Ljava/lang/String;

    .line 675
    const-string v106, "title"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->title:Ljava/lang/String;

    .line 676
    const-string v106, "description"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->description:Ljava/lang/String;

    .line 677
    const-string v106, "shorttitle"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->shorttitle:Ljava/lang/String;

    .line 678
    const-string v106, "pubdate"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->pubdate:Ljava/lang/String;

    .line 679
    const-string v106, "flag"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->flag:Ljava/lang/String;

    .line 681
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/nflystudio/net/NewsData;->newsdatalist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_13

    .line 685
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v83    # "nitem":Lcom/nflystudio/net/NewsDataItem;
    .end local v103    # "temp":Lorg/json/JSONObject;
    :cond_5e
    const/16 v106, -0x2

    move/from16 v0, v106

    move-object/from16 v1, p1

    iput v0, v1, Lcom/nflystudio/net/BaseRespone;->status:I

    goto/16 :goto_14

    .line 691
    .end local v51    # "jbo":Lorg/json/JSONObject;
    .end local v81    # "newsdata":Lcom/nflystudio/net/NewsData;
    :pswitch_15
    new-instance v37, Lcom/nflystudio/net/GameHotKeyWord;

    invoke-direct/range {v37 .. v37}, Lcom/nflystudio/net/GameHotKeyWord;-><init>()V

    .line 692
    .local v37, "ghotkey":Lcom/nflystudio/net/GameHotKeyWord;
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/nflystudio/net/GameHotKeyWord;->gameHotKeyWord:Ljava/util/ArrayList;

    .line 693
    const/4 v6, 0x0

    .line 694
    .restart local v6    # "arr":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "arr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 695
    .restart local v6    # "arr":Lorg/json/JSONArray;
    if-eqz v6, :cond_5f

    .line 696
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_15
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_60

    .line 701
    .end local v49    # "j":I
    :cond_5f
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 697
    .restart local v49    # "j":I
    :cond_60
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/nflystudio/net/GameHotKeyWord;->gameHotKeyWord:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move/from16 v0, v49

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v107

    invoke-virtual/range {v106 .. v107}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v49, v49, 0x1

    goto :goto_15

    .line 705
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v37    # "ghotkey":Lcom/nflystudio/net/GameHotKeyWord;
    .end local v49    # "j":I
    :pswitch_16
    new-instance v82, Lcom/nflystudio/net/NewsDetaile;

    invoke-direct/range {v82 .. v82}, Lcom/nflystudio/net/NewsDetaile;-><init>()V

    .line 707
    .local v82, "newsdetaile":Lcom/nflystudio/net/NewsDetaile;
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 708
    .restart local v6    # "arr":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-lez v106, :cond_61

    .line 709
    new-instance v83, Lcom/nflystudio/net/NewsDataItem;

    invoke-direct/range {v83 .. v83}, Lcom/nflystudio/net/NewsDataItem;-><init>()V

    .line 710
    .restart local v83    # "nitem":Lcom/nflystudio/net/NewsDataItem;
    const/16 v106, 0x0

    move/from16 v0, v106

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Lorg/json/JSONObject;

    .line 711
    .restart local v103    # "temp":Lorg/json/JSONObject;
    const-string v106, "aid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->aid:Ljava/lang/String;

    .line 712
    const-string v106, "litpic"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->litpic:Ljava/lang/String;

    .line 713
    const-string v106, "title"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->title:Ljava/lang/String;

    .line 714
    const-string v106, "description"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->description:Ljava/lang/String;

    .line 715
    const-string v106, "shorttitle"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->shorttitle:Ljava/lang/String;

    .line 716
    const-string v106, "pubdate"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->pubdate:Ljava/lang/String;

    .line 717
    const-string v106, "flag"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->flag:Ljava/lang/String;

    .line 718
    const-string v106, "body"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v82

    iput-object v0, v1, Lcom/nflystudio/net/NewsDetaile;->body:Ljava/lang/String;

    .line 720
    .end local v83    # "nitem":Lcom/nflystudio/net/NewsDataItem;
    .end local v103    # "temp":Lorg/json/JSONObject;
    :cond_61
    move-object/from16 v0, v82

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 730
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v82    # "newsdetaile":Lcom/nflystudio/net/NewsDetaile;
    :pswitch_17
    new-instance v81, Lcom/nflystudio/net/NewsData;

    invoke-direct/range {v81 .. v81}, Lcom/nflystudio/net/NewsData;-><init>()V

    .line 731
    .restart local v81    # "newsdata":Lcom/nflystudio/net/NewsData;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0xa

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v81

    iput-object v0, v1, Lcom/nflystudio/net/NewsData;->newsdatalist:Ljava/util/ArrayList;

    .line 733
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 734
    .restart local v6    # "arr":Lorg/json/JSONArray;
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_16
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_62

    .line 748
    move-object/from16 v0, v81

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 735
    :cond_62
    new-instance v83, Lcom/nflystudio/net/NewsDataItem;

    invoke-direct/range {v83 .. v83}, Lcom/nflystudio/net/NewsDataItem;-><init>()V

    .line 736
    .restart local v83    # "nitem":Lcom/nflystudio/net/NewsDataItem;
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Lorg/json/JSONObject;

    .line 737
    .restart local v103    # "temp":Lorg/json/JSONObject;
    const-string v106, "aid"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->aid:Ljava/lang/String;

    .line 738
    const-string v106, "litpic"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->litpic:Ljava/lang/String;

    .line 739
    const-string v106, "title"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->title:Ljava/lang/String;

    .line 740
    const-string v106, "description"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->description:Ljava/lang/String;

    .line 741
    const-string v106, "shorttitle"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->shorttitle:Ljava/lang/String;

    .line 742
    const-string v106, "pubdate"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->pubdate:Ljava/lang/String;

    .line 743
    const-string v106, "flag"

    move-object/from16 v0, v103

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    iput-object v0, v1, Lcom/nflystudio/net/NewsDataItem;->flag:Ljava/lang/String;

    .line 745
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/nflystudio/net/NewsData;->newsdatalist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_16

    .line 752
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v44    # "i":I
    .end local v81    # "newsdata":Lcom/nflystudio/net/NewsData;
    .end local v83    # "nitem":Lcom/nflystudio/net/NewsDataItem;
    .end local v103    # "temp":Lorg/json/JSONObject;
    :pswitch_18
    new-instance v45, Lcom/nflystudio/net/IssueNumData;

    invoke-direct/range {v45 .. v45}, Lcom/nflystudio/net/IssueNumData;-><init>()V

    .line 753
    .local v45, "indata":Lcom/nflystudio/net/IssueNumData;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0x2

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumData;->issuenumlist:Ljava/util/ArrayList;

    .line 755
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 757
    .restart local v6    # "arr":Lorg/json/JSONArray;
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_17
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_63

    .line 777
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 758
    :cond_63
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/json/JSONObject;

    .line 759
    .restart local v38    # "gitem":Lorg/json/JSONObject;
    new-instance v48, Lcom/nflystudio/net/IssueNumItem;

    invoke-direct/range {v48 .. v48}, Lcom/nflystudio/net/IssueNumItem;-><init>()V

    .line 760
    .restart local v48    # "iuitem":Lcom/nflystudio/net/IssueNumItem;
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_64

    .line 761
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v48

    iput v0, v1, Lcom/nflystudio/net/IssueNumItem;->filesize:I

    .line 763
    :cond_64
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->gameid:Ljava/lang/String;

    .line 764
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->gamename:Ljava/lang/String;

    .line 765
    const-string v106, "android_icon"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->iconurl:Ljava/lang/String;

    .line 766
    const-string v106, "times"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->times:Ljava/lang/String;

    .line 767
    const-string v106, "gametype"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->type:Ljava/lang/String;

    .line 768
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->downurl:Ljava/lang/String;

    .line 769
    const-string v106, "status"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->status:Ljava/lang/String;

    .line 770
    const-string v106, "name"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->rbname:Ljava/lang/String;

    .line 771
    const-string v106, "remain"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->remain:Ljava/lang/String;

    .line 772
    const-string v106, "url"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->fahaourl:Ljava/lang/String;

    .line 773
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->description:Ljava/lang/String;

    .line 774
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/nflystudio/net/IssueNumData;->issuenumlist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_17

    .line 781
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v44    # "i":I
    .end local v45    # "indata":Lcom/nflystudio/net/IssueNumData;
    .end local v48    # "iuitem":Lcom/nflystudio/net/IssueNumItem;
    :pswitch_19
    new-instance v45, Lcom/nflystudio/net/IssueNumData;

    invoke-direct/range {v45 .. v45}, Lcom/nflystudio/net/IssueNumData;-><init>()V

    .line 782
    .restart local v45    # "indata":Lcom/nflystudio/net/IssueNumData;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0x2

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumData;->issuenumlist:Ljava/util/ArrayList;

    .line 784
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 786
    .restart local v6    # "arr":Lorg/json/JSONArray;
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_18
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_65

    .line 825
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 787
    :cond_65
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/json/JSONObject;

    .line 788
    .restart local v38    # "gitem":Lorg/json/JSONObject;
    new-instance v48, Lcom/nflystudio/net/IssueNumItem;

    invoke-direct/range {v48 .. v48}, Lcom/nflystudio/net/IssueNumItem;-><init>()V

    .line 789
    .restart local v48    # "iuitem":Lcom/nflystudio/net/IssueNumItem;
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_66

    .line 790
    const-string v106, "android_size"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v48

    iput v0, v1, Lcom/nflystudio/net/IssueNumItem;->filesize:I

    .line 792
    :cond_66
    const-string v106, "dtid"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->gameid:Ljava/lang/String;

    .line 793
    const-string v106, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->gamename:Ljava/lang/String;

    .line 794
    const-string v106, "litpic"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->iconurl:Ljava/lang/String;

    .line 795
    const-string v106, "times"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->times:Ljava/lang/String;

    .line 796
    const-string v106, "gametype"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->type:Ljava/lang/String;

    .line 797
    const-string v106, "android_down"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->downurl:Ljava/lang/String;

    .line 798
    const-string v106, "status"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->status:Ljava/lang/String;

    .line 799
    const-string v106, "name"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->rbname:Ljava/lang/String;

    .line 800
    const-string v106, "remain"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->remain:Ljava/lang/String;

    .line 801
    const-string v106, "url"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_67

    .line 802
    const-string v106, "url"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->fahaourl:Ljava/lang/String;

    .line 804
    :cond_67
    const-string v106, "description"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->description:Ljava/lang/String;

    .line 805
    const-string v106, "key"

    move-object/from16 v0, v38

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v71

    .line 806
    .local v71, "keyarray":Lorg/json/JSONArray;
    if-eqz v71, :cond_68

    invoke-virtual/range {v71 .. v71}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-lez v106, :cond_68

    .line 807
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v40, "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_19
    invoke-virtual/range {v71 .. v71}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_69

    .line 820
    move-object/from16 v0, v40

    move-object/from16 v1, v48

    iput-object v0, v1, Lcom/nflystudio/net/IssueNumItem;->haolist:Ljava/util/ArrayList;

    .line 822
    .end local v40    # "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    .end local v49    # "j":I
    :cond_68
    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/nflystudio/net/IssueNumData;->issuenumlist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_18

    .line 809
    .restart local v40    # "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    .restart local v49    # "j":I
    :cond_69
    move-object/from16 v0, v71

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Lorg/json/JSONObject;

    .line 810
    .local v90, "ohitem":Lorg/json/JSONObject;
    new-instance v41, Lcom/nflystudio/net/HaoItem;

    invoke-direct/range {v41 .. v41}, Lcom/nflystudio/net/HaoItem;-><init>()V

    .line 811
    .local v41, "hitem":Lcom/nflystudio/net/HaoItem;
    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    const-string v106, "key"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->key:Ljava/lang/String;

    .line 813
    const-string v106, "value"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_6a

    .line 814
    const-string v106, "value"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->value:Ljava/lang/String;

    .line 816
    :cond_6a
    const-string v106, "name"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->lbname:Ljava/lang/String;

    .line 817
    const-string v106, "typeid"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->typeid:Ljava/lang/String;

    .line 818
    const-string v106, "keyid"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->keyid:Ljava/lang/String;

    .line 808
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_19

    .line 829
    .end local v6    # "arr":Lorg/json/JSONArray;
    .end local v38    # "gitem":Lorg/json/JSONObject;
    .end local v40    # "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    .end local v41    # "hitem":Lcom/nflystudio/net/HaoItem;
    .end local v44    # "i":I
    .end local v45    # "indata":Lcom/nflystudio/net/IssueNumData;
    .end local v48    # "iuitem":Lcom/nflystudio/net/IssueNumItem;
    .end local v49    # "j":I
    .end local v71    # "keyarray":Lorg/json/JSONArray;
    .end local v90    # "ohitem":Lorg/json/JSONObject;
    :pswitch_1a
    new-instance v10, Lcom/nflystudio/net/BbsData;

    invoke-direct {v10}, Lcom/nflystudio/net/BbsData;-><init>()V

    .line 830
    .local v10, "bbsdata":Lcom/nflystudio/net/BbsData;
    new-instance v106, Lorg/json/JSONObject;

    move-object/from16 v0, v106

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v107, "items"

    invoke-virtual/range {v106 .. v107}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 831
    .local v12, "bbslist":Lorg/json/JSONArray;
    new-instance v106, Ljava/util/ArrayList;

    const/16 v107, 0x2

    invoke-direct/range {v106 .. v107}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v106

    iput-object v0, v10, Lcom/nflystudio/net/BbsData;->bbsitemlist:Ljava/util/ArrayList;

    .line 832
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_1a
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_6b

    .line 851
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 833
    :cond_6b
    new-instance v11, Lcom/nflystudio/net/BbsItemData;

    invoke-direct {v11}, Lcom/nflystudio/net/BbsItemData;-><init>()V

    .line 834
    .local v11, "bbsitem":Lcom/nflystudio/net/BbsItemData;
    move/from16 v0, v49

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/json/JSONObject;

    .line 835
    .local v55, "jsbbsitem":Lorg/json/JSONObject;
    const-string v106, "pid"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_6c

    .line 836
    const-string v106, "pid"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v11, Lcom/nflystudio/net/BbsItemData;->pid:Ljava/lang/String;

    .line 837
    :cond_6c
    const-string v106, "author"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_6d

    .line 838
    const-string v106, "author"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v11, Lcom/nflystudio/net/BbsItemData;->author:Ljava/lang/String;

    .line 839
    :cond_6d
    const-string v106, "message"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_6e

    .line 840
    const-string v106, "message"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v11, Lcom/nflystudio/net/BbsItemData;->message:Ljava/lang/String;

    .line 841
    :cond_6e
    const-string v106, "dateline"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_6f

    .line 842
    const-string v106, "dateline"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v11, Lcom/nflystudio/net/BbsItemData;->dateline:Ljava/lang/String;

    .line 843
    :cond_6f
    const-string v106, "pic"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_70

    .line 844
    const-string v106, "pic"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v11, Lcom/nflystudio/net/BbsItemData;->pic:Ljava/lang/String;

    .line 845
    :cond_70
    const-string v106, "grouptitle"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_71

    .line 846
    const-string v106, "grouptitle"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v11, Lcom/nflystudio/net/BbsItemData;->grouptitle:Ljava/lang/String;

    .line 847
    :cond_71
    const-string v106, "number"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_72

    .line 848
    const-string v106, "number"

    move-object/from16 v0, v55

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v11, Lcom/nflystudio/net/BbsItemData;->number:Ljava/lang/String;

    .line 849
    :cond_72
    iget-object v0, v10, Lcom/nflystudio/net/BbsData;->bbsitemlist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_1a

    .line 862
    .end local v10    # "bbsdata":Lcom/nflystudio/net/BbsData;
    .end local v11    # "bbsitem":Lcom/nflystudio/net/BbsItemData;
    .end local v12    # "bbslist":Lorg/json/JSONArray;
    .end local v49    # "j":I
    .end local v55    # "jsbbsitem":Lorg/json/JSONObject;
    :pswitch_1b
    new-instance v106, Lorg/json/JSONObject;

    move-object/from16 v0, v106

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v107, "items"

    invoke-virtual/range {v106 .. v107}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 863
    .restart local v12    # "bbslist":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-gtz v106, :cond_73

    .line 864
    const/16 v106, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 868
    :cond_73
    new-instance v4, Lcom/nflystudio/net/AdData;

    invoke-direct {v4}, Lcom/nflystudio/net/AdData;-><init>()V

    .line 869
    .local v4, "addata":Lcom/nflystudio/net/AdData;
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v106

    iput-object v0, v4, Lcom/nflystudio/net/AdData;->adlist:Ljava/util/ArrayList;

    .line 870
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_1b
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_74

    .line 878
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 871
    :cond_74
    new-instance v5, Lcom/nflystudio/net/AdDataItem;

    invoke-direct {v5}, Lcom/nflystudio/net/AdDataItem;-><init>()V

    .line 872
    .local v5, "aditem":Lcom/nflystudio/net/AdDataItem;
    move/from16 v0, v49

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lorg/json/JSONObject;

    .line 873
    .local v54, "jsadsitem":Lorg/json/JSONObject;
    const-string v106, "adid"

    move-object/from16 v0, v54

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v5, Lcom/nflystudio/net/AdDataItem;->adid:Ljava/lang/String;

    .line 874
    const-string v106, "litpic"

    move-object/from16 v0, v54

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v5, Lcom/nflystudio/net/AdDataItem;->litpic:Ljava/lang/String;

    .line 875
    const-string v106, "url"

    move-object/from16 v0, v54

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    iput-object v0, v5, Lcom/nflystudio/net/AdDataItem;->url:Ljava/lang/String;

    .line 876
    iget-object v0, v4, Lcom/nflystudio/net/AdData;->adlist:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v49, v49, 0x1

    goto :goto_1b

    .line 885
    .end local v4    # "addata":Lcom/nflystudio/net/AdData;
    .end local v5    # "aditem":Lcom/nflystudio/net/AdDataItem;
    .end local v12    # "bbslist":Lorg/json/JSONArray;
    .end local v49    # "j":I
    .end local v54    # "jsadsitem":Lorg/json/JSONObject;
    :pswitch_1c
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 886
    .local v19, "comment":Lorg/json/JSONObject;
    const-string v106, "state"

    move-object/from16 v0, v19

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .line 887
    .local v95, "result":Ljava/lang/String;
    const-string v106, "true"

    move-object/from16 v0, v95

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_75

    .line 888
    const/16 v106, 0x1

    move/from16 v0, v106

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/nflystudio/net/BaseRespone;->publishComment:Z

    goto/16 :goto_0

    .line 889
    :cond_75
    const-string v106, "false"

    move-object/from16 v0, v95

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_1

    .line 890
    const/16 v106, 0x0

    move/from16 v0, v106

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/nflystudio/net/BaseRespone;->publishComment:Z

    goto/16 :goto_0

    .line 894
    .end local v19    # "comment":Lorg/json/JSONObject;
    .end local v95    # "result":Ljava/lang/String;
    :pswitch_1d
    new-instance v25, Lcom/nflystudio/net/FaHaoData;

    invoke-direct/range {v25 .. v25}, Lcom/nflystudio/net/FaHaoData;-><init>()V

    .line 895
    .local v25, "fhdata":Lcom/nflystudio/net/FaHaoData;
    new-instance v51, Lorg/json/JSONObject;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 896
    .restart local v51    # "jbo":Lorg/json/JSONObject;
    const-string v106, "state"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_76

    const-string v106, "state"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_76

    .line 897
    const-string v106, "state"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v106

    move/from16 v0, v106

    move-object/from16 v1, v25

    iput v0, v1, Lcom/nflystudio/net/FaHaoData;->State:I

    .line 899
    :cond_76
    const-string v106, "key"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_77

    const-string v106, "key"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_77

    .line 900
    const-string v106, "key"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/nflystudio/net/FaHaoData;->key:Ljava/lang/String;

    .line 902
    :cond_77
    const-string v106, "message"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_78

    const-string v106, "message"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_78

    .line 903
    const-string v106, "message"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/nflystudio/net/FaHaoData;->message:Ljava/lang/String;

    .line 905
    :cond_78
    const-string v106, "value"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_79

    const-string v106, "value"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_79

    .line 906
    const-string v106, "value"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/nflystudio/net/FaHaoData;->value:Ljava/lang/String;

    .line 908
    :cond_79
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 912
    .end local v25    # "fhdata":Lcom/nflystudio/net/FaHaoData;
    .end local v51    # "jbo":Lorg/json/JSONObject;
    :pswitch_1e
    new-instance v77, Lcom/nflystudio/net/LiBaoData;

    invoke-direct/range {v77 .. v77}, Lcom/nflystudio/net/LiBaoData;-><init>()V

    .line 913
    .local v77, "libaodata":Lcom/nflystudio/net/LiBaoData;
    new-instance v76, Lorg/json/JSONArray;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 914
    .local v76, "libaoarray":Lorg/json/JSONArray;
    if-eqz v76, :cond_7a

    invoke-virtual/range {v76 .. v76}, Lorg/json/JSONArray;->length()I

    move-result v106

    if-lez v106, :cond_7a

    .line 915
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .restart local v40    # "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    move-object/from16 v0, v40

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/nflystudio/net/LiBaoData;->haoitemlist:Ljava/util/ArrayList;

    .line 917
    const/16 v49, 0x0

    .restart local v49    # "j":I
    :goto_1c
    invoke-virtual/range {v76 .. v76}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v49

    move/from16 v1, v106

    if-lt v0, v1, :cond_7b

    .line 930
    .end local v40    # "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    .end local v49    # "j":I
    :cond_7a
    move-object/from16 v0, v77

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    goto/16 :goto_0

    .line 918
    .restart local v40    # "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    .restart local v49    # "j":I
    :cond_7b
    move-object/from16 v0, v76

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Lorg/json/JSONObject;

    .line 919
    .restart local v90    # "ohitem":Lorg/json/JSONObject;
    new-instance v41, Lcom/nflystudio/net/HaoItem;

    invoke-direct/range {v41 .. v41}, Lcom/nflystudio/net/HaoItem;-><init>()V

    .line 920
    .restart local v41    # "hitem":Lcom/nflystudio/net/HaoItem;
    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    const-string v106, "key"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->key:Ljava/lang/String;

    .line 922
    const-string v106, "value"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v106

    if-nez v106, :cond_7c

    .line 923
    const-string v106, "value"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->value:Ljava/lang/String;

    .line 925
    :cond_7c
    const-string v106, "name"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->lbname:Ljava/lang/String;

    .line 926
    const-string v106, "typeid"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->typeid:Ljava/lang/String;

    .line 927
    const-string v106, "keyid"

    move-object/from16 v0, v90

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/nflystudio/net/HaoItem;->keyid:Ljava/lang/String;

    .line 917
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_1c

    .line 935
    .end local v40    # "haolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nflystudio/net/HaoItem;>;"
    .end local v41    # "hitem":Lcom/nflystudio/net/HaoItem;
    .end local v49    # "j":I
    .end local v76    # "libaoarray":Lorg/json/JSONArray;
    .end local v77    # "libaodata":Lcom/nflystudio/net/LiBaoData;
    .end local v90    # "ohitem":Lorg/json/JSONObject;
    :pswitch_1f
    new-instance v51, Lorg/json/JSONObject;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 936
    .restart local v51    # "jbo":Lorg/json/JSONObject;
    const-string v106, "status"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1

    .line 937
    const-string v106, "status"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 938
    .local v99, "status":Ljava/lang/String;
    const-string v106, "0"

    move-object/from16 v0, v106

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v106

    if-eqz v106, :cond_7d

    .line 940
    const/16 v106, 0x1

    move/from16 v0, v106

    move-object/from16 v1, p1

    iput v0, v1, Lcom/nflystudio/net/BaseRespone;->status:I

    goto/16 :goto_0

    .line 943
    :cond_7d
    const-string v106, "info"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_1

    .line 944
    new-instance v92, Lcom/nflystudio/net/PushData;

    invoke-direct/range {v92 .. v92}, Lcom/nflystudio/net/PushData;-><init>()V

    .line 945
    .local v92, "pushData":Lcom/nflystudio/net/PushData;
    const-string v106, "time"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_7e

    .line 946
    const-string v106, "time"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v106

    move-wide/from16 v0, v106

    move-object/from16 v2, v92

    iput-wide v0, v2, Lcom/nflystudio/net/PushData;->currentservertime:J

    .line 951
    :cond_7e
    sget-object v106, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v107, Ljava/lang/StringBuilder;

    const-string v108, "tuisongxf="

    invoke-direct/range {v107 .. v108}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v107

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v107

    invoke-virtual/range {v107 .. v107}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v107

    invoke-virtual/range {v106 .. v107}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    const-string v106, "info"

    move-object/from16 v0, v51

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 954
    .local v22, "data":Lorg/json/JSONArray;
    sget-object v106, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v107, Ljava/lang/StringBuilder;

    const-string v108, "sysarraysize="

    invoke-direct/range {v107 .. v108}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v108

    invoke-virtual/range {v107 .. v108}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v107

    invoke-virtual/range {v107 .. v107}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v107

    invoke-virtual/range {v106 .. v107}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 956
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v92

    iput-object v0, v1, Lcom/nflystudio/net/PushData;->pushDataList:Ljava/util/ArrayList;

    .line 957
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_1d
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v106

    move/from16 v0, v44

    move/from16 v1, v106

    if-lt v0, v1, :cond_7f

    .line 976
    move-object/from16 v0, v92

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    .line 977
    const/16 v106, 0x0

    move/from16 v0, v106

    move-object/from16 v1, p1

    iput v0, v1, Lcom/nflystudio/net/BaseRespone;->status:I

    goto/16 :goto_0

    .line 958
    :cond_7f
    new-instance v94, Lcom/nflystudio/Service/PushDateItem;

    invoke-direct/range {v94 .. v94}, Lcom/nflystudio/Service/PushDateItem;-><init>()V

    .line 959
    .local v94, "pushItem":Lcom/nflystudio/Service/PushDateItem;
    move-object/from16 v0, v22

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Lorg/json/JSONObject;

    .line 960
    .local v93, "pushDateItem":Lorg/json/JSONObject;
    const-string v106, "id"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->id:Ljava/lang/String;

    .line 961
    const-string v106, "dtid"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->dtid:Ljava/lang/String;

    .line 962
    const-string v106, "class"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->classType:Ljava/lang/String;

    .line 963
    const-string v106, "gamename"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->gamename:Ljava/lang/String;

    .line 964
    const-string v106, "gamepath"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->gamepath:Ljava/lang/String;

    .line 965
    const-string v106, "title"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->title:Ljava/lang/String;

    .line 966
    const-string v106, "gametype"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->gametype:Ljava/lang/String;

    .line 967
    const-string v106, "litpic"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->litpic:Ljava/lang/String;

    .line 968
    const-string v106, "download"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->download:Ljava/lang/String;

    .line 969
    const-string v106, "host"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->host:Ljava/lang/String;

    .line 970
    const-string v106, "url"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->url:Ljava/lang/String;

    .line 971
    const-string v106, "wapurl"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    sput-object v106, Lcom/nflystudio/Service/PushDateItem;->wapurl:Ljava/lang/String;

    .line 972
    const-string v106, "gamebody"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    invoke-virtual/range {v106 .. v106}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->gamebody:Ljava/lang/String;

    .line 973
    const-string v106, "date"

    move-object/from16 v0, v93

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/nflystudio/Service/PushDateItem;->date:Ljava/lang/String;

    .line 974
    move-object/from16 v0, v92

    iget-object v0, v0, Lcom/nflystudio/net/PushData;->pushDataList:Ljava/util/ArrayList;

    move-object/from16 v106, v0

    move-object/from16 v0, v106

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_1d

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_15
        :pswitch_f
        :pswitch_18
        :pswitch_19
        :pswitch_f
        :pswitch_17
        :pswitch_1
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_1c
        :pswitch_1f
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1e
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
