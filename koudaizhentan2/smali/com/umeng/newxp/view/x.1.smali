.class Lcom/umeng/newxp/view/x;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/w;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/w;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/umeng/newxp/view/x;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->values()[Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->BROWSE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->DOWNLOAD:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->NEW:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->OPEN:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->PHONE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/umeng/newxp/view/x;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onFitType(Landroid/view/View;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->H(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/umeng/newxp/view/x;->a()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/b;->w(Landroid/content/Context;)I

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/b;->v(Landroid/content/Context;)I

    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/b;->u(Landroid/content/Context;)I

    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v1, p0, Lcom/umeng/newxp/view/x;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/b;->x(Landroid/content/Context;)I

    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
