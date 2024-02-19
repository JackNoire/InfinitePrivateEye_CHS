.class public Lcom/umeng/newxp/view/aK;
.super Landroid/app/AlertDialog;
.source "SimpleDownloadDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/newxp/Promoter;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/umeng/newxp/view/aK;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/umeng/newxp/view/aK;->b:Lcom/umeng/newxp/Promoter;

    .line 26
    iput p3, p0, Lcom/umeng/newxp/view/aK;->c:I

    .line 27
    iput p4, p0, Lcom/umeng/newxp/view/aK;->d:I

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u8f7d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/aK;->b:Lcom/umeng/newxp/Promoter;

    iget-object v1, v1, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aK;->setMessage(Ljava/lang/CharSequence;)V

    .line 31
    const/4 v0, -0x1

    const-string v1, "\u4e0b\u8f7d"

    .line 32
    new-instance v2, Lcom/umeng/newxp/view/aL;

    invoke-direct {v2, p0, p5}, Lcom/umeng/newxp/view/aL;-><init>(Lcom/umeng/newxp/view/aK;Lcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/newxp/view/aK;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    const/4 v0, -0x2

    const-string v1, "\u4e0b\u8f7d"

    .line 49
    new-instance v2, Lcom/umeng/newxp/view/aM;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/aM;-><init>(Lcom/umeng/newxp/view/aK;)V

    .line 48
    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/newxp/view/aK;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aK;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/umeng/newxp/view/aK;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/aK;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/umeng/newxp/view/aK;->d:I

    return v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/aK;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/umeng/newxp/view/aK;->c:I

    return v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/aK;)Lcom/umeng/newxp/Promoter;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/umeng/newxp/view/aK;->b:Lcom/umeng/newxp/Promoter;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 59
    .line 60
    iget v2, p0, Lcom/umeng/newxp/view/aK;->c:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 70
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 77
    goto :goto_0

    .line 60
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
