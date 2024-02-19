.class public Lcom/nflystudio/InfinitePrivateEye2/MyView;
.super Ljava/lang/Object;
.source "MyView.java"


# instance fields
.field private container:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field private leftButton:Landroid/widget/Button;

.field private mWebView:Landroid/webkit/WebView;

.field private rightButton:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/MyView;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 23

    .prologue
    .line 59
    new-instance v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nflystudio/InfinitePrivateEye2/MyView;->container:Landroid/widget/RelativeLayout;

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->container:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 61
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v9, "containerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, 0x41

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v18, "topbarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v20, "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, 0x3c

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v5, "bottomLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->container:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/16 v17, 0x3

    .line 69
    .local v17, "topBarContainerId":I
    const/4 v13, 0x4

    .line 70
    .local v13, "mWebViewId":I
    const/4 v4, 0x5

    .line 72
    .local v4, "bottomContainerId":I
    const/4 v7, 0x2

    .line 75
    .local v7, "commentButtonId":I
    new-instance v16, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v16, "topBarContainer":Landroid/widget/RelativeLayout;
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    invoke-virtual/range {v16 .. v17}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 78
    const v21, -0xffff01

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 79
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nflystudio/InfinitePrivateEye2/MyView;->leftButton:Landroid/widget/Button;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->leftButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->leftButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const-string v22, "\u8fd4\u56de"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->leftButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0xff0100

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 84
    new-instance v21, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nflystudio/InfinitePrivateEye2/MyView;->rightButton:Landroid/widget/Button;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->rightButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->rightButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const v22, -0xff0100

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->rightButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const-string v22, "\u53f3\u8fb9\u6309\u94ae"

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nflystudio/InfinitePrivateEye2/MyView;->title:Landroid/widget/TextView;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/high16 v22, 0x41a00000    # 20.0f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v11, "leftButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v14, "rightButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v15, "titleLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xf

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 96
    const/16 v21, 0xf

    move/from16 v0, v21

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->leftButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/16 v21, 0xb

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    const/16 v21, 0xf

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 102
    const/16 v21, 0xf

    move/from16 v0, v21

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->rightButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const/16 v21, 0xf

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 107
    const/16 v21, 0xd

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->leftButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->rightButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->container:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .local v3, "bottomContainer":Landroid/widget/RelativeLayout;
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 120
    const/16 v21, 0xc

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    const v21, -0xff0001

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 122
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 125
    .local v12, "mEditText":Landroid/widget/EditText;
    const-string v21, "\u8bf7\u8f93\u5165\u8bc4\u8bba\u5185\u5bb9"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 126
    const/high16 v21, 0x41700000    # 15.0f

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 127
    const/16 v21, 0x10

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 128
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 129
    new-instance v6, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 130
    .local v6, "commentButton":Landroid/widget/Button;
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 131
    const-string v21, "\u8bc4\u8bba"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v21, -0x777778

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 135
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v10, "etLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xa

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 137
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, 0x64

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v8, "commentButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xa

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 139
    const/16 v21, 0xa

    move/from16 v0, v21

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 141
    const/16 v21, 0xb

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    const/16 v21, 0xf

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    const/16 v21, 0xf

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 147
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    invoke-virtual {v12, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->container:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 155
    new-instance v21, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v19

    .line 157
    .local v19, "webSettings":Landroid/webkit/WebSettings;
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 158
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 159
    const/16 v21, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 160
    const/16 v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 161
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 162
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 163
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 164
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/nflystudio/InfinitePrivateEye2/MyView$1;

    invoke-direct/range {v22 .. v23}, Lcom/nflystudio/InfinitePrivateEye2/MyView$1;-><init>(Lcom/nflystudio/InfinitePrivateEye2/MyView;)V

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->setId(I)V

    .line 174
    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->container:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->container:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setLeftButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public setRightButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
