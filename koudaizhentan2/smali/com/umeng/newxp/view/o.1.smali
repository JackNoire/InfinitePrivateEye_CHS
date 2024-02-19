.class public Lcom/umeng/newxp/view/o;
.super Landroid/app/Dialog;
.source "DownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/o$a;
    }
.end annotation


# static fields
.field static a:I

.field private static synthetic e:[I


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/umeng/newxp/view/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/o$a;)V
    .locals 4

    .prologue
    .line 81
    invoke-direct {p0, p1, p6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    iput-object p1, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    .line 83
    iput p3, p0, Lcom/umeng/newxp/view/o;->c:I

    .line 84
    iput-object p7, p0, Lcom/umeng/newxp/view/o;->d:Lcom/umeng/newxp/view/o$a;

    .line 86
    invoke-static {p1}, Lcom/umeng/newxp/a/d;->o(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->setContentView(I)V

    .line 88
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->t(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " \u5f00\u53d1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/umeng/newxp/Promoter;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->u(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " \u540d\u79f0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->q(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    sget-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->show_size:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    iget-wide v2, p2, Lcom/umeng/newxp/Promoter;->size:J

    invoke-static {v1, v2, v3}, Lcom/umeng/common/util/h;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->w(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    iget-object v1, p2, Lcom/umeng/newxp/Promoter;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 105
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->m(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    iget-object v2, p2, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->k(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    invoke-static {}, Lcom/umeng/newxp/view/o;->a()[I

    move-result-object v1

    invoke-virtual {p7}, Lcom/umeng/newxp/view/o$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 117
    :goto_1
    new-instance v1, Lcom/umeng/newxp/view/p;

    invoke-direct {v1, p0, p2, p4, p5}, Lcom/umeng/newxp/view/p;-><init>(Lcom/umeng/newxp/view/o;Lcom/umeng/newxp/Promoter;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->j(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 157
    new-instance v1, Lcom/umeng/newxp/view/q;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/q;-><init>(Lcom/umeng/newxp/view/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void

    .line 98
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_xp_dowload_dialog_dinfo"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_xp_dowload_dialog_cinfo"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/umeng/newxp/view/o;)Lcom/umeng/newxp/view/o$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->d:Lcom/umeng/newxp/view/o$a;

    return-object v0
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/umeng/newxp/view/o;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/newxp/view/o$a;->values()[Lcom/umeng/newxp/view/o$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/newxp/view/o$a;->b:Lcom/umeng/newxp/view/o$a;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/newxp/view/o$a;->a:Lcom/umeng/newxp/view/o$a;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/o$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/umeng/newxp/view/o;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/newxp/view/o;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/o;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/umeng/newxp/view/o;->c:I

    return v0
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 46
    .line 47
    iget v2, p0, Lcom/umeng/newxp/view/o;->c:I

    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 57
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 64
    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
