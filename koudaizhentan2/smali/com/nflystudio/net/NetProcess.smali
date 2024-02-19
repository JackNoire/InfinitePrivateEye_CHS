.class public Lcom/nflystudio/net/NetProcess;
.super Ljava/lang/Object;
.source "NetProcess.java"


# static fields
.field public static final NET_CONNECT_TIMEOUT:I = 0x4e20

.field public static final NET_ERROR:I = -0x2

.field public static final NET_FAIL:I = -0x1

.field public static final NET_REQUEST_TIMEOUT:I = 0x4e20

.field public static final NET_SUCCESS:I = 0x0

.field public static final NET_TIMEOUT:I = -0x3

.field public static final TAG:Ljava/lang/String; = "NetProcess"

.field public static final TIP_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5\uff01"

.field public static final TIP_FAIL:Ljava/lang/String; = "\u7f51\u7edc\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

.field public static final TIP_TIMEOUT:Ljava/lang/String; = "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u91cd\u8bd5\uff01"


# instance fields
.field private button:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private observer:Lcom/nflystudio/net/ResponeObserver;

.field private pb:Landroid/widget/ProgressBar;

.field private tvTip:Landroid/widget/TextView;

.field private type:I

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nflystudio/net/NetProcess;->context:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/nflystudio/net/NetProcess;->init()V

    .line 46
    invoke-direct {p0}, Lcom/nflystudio/net/NetProcess;->regListener()V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/nflystudio/net/NetProcess;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nflystudio/net/NetProcess;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nflystudio/net/NetProcess;)Lcom/nflystudio/net/ResponeObserver;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->observer:Lcom/nflystudio/net/ResponeObserver;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nflystudio/net/NetProcess;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nflystudio/net/NetProcess;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/nflystudio/net/NetProcess;->type:I

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nflystudio/net/NetProcess;->inflater:Landroid/view/LayoutInflater;

    .line 54
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->view:Landroid/view/View;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nflystudio/net/NetProcess;->pb:Landroid/widget/ProgressBar;

    .line 55
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 57
    return-void
.end method

.method private regListener()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->button:Landroid/widget/Button;

    new-instance v1, Lcom/nflystudio/net/NetProcess$1;

    invoke-direct {v1, p0}, Lcom/nflystudio/net/NetProcess$1;-><init>(Lcom/nflystudio/net/NetProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->view:Landroid/view/View;

    return-object v0
.end method

.method public getVisible()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setObsever(Lcom/nflystudio/net/ResponeObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/nflystudio/net/ResponeObserver;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nflystudio/net/NetProcess;->observer:Lcom/nflystudio/net/ResponeObserver;

    .line 66
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "pb"    # Landroid/widget/ProgressBar;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nflystudio/net/NetProcess;->pb:Landroid/widget/ProgressBar;

    .line 70
    return-void
.end method

.method public setProgressVisible(Z)V
    .locals 2
    .param p1, "progressVisible"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setUrl(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p2, p0, Lcom/nflystudio/net/NetProcess;->url:Ljava/lang/String;

    .line 61
    iput p1, p0, Lcom/nflystudio/net/NetProcess;->type:I

    .line 62
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nflystudio/net/NetProcess;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
