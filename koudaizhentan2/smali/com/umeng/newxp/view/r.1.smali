.class Lcom/umeng/newxp/view/r;
.super Ljava/lang/Object;
.source "EmbededContainer.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer;

.field private final synthetic b:Lcom/umeng/newxp/view/aI;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/r;->a:Lcom/umeng/newxp/view/EmbededContainer;

    iput-object p2, p0, Lcom/umeng/newxp/view/r;->b:Lcom/umeng/newxp/view/aI;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/umeng/newxp/view/r;->a:Lcom/umeng/newxp/view/EmbededContainer;

    iget-object v1, p0, Lcom/umeng/newxp/view/r;->b:Lcom/umeng/newxp/view/aI;

    invoke-static {v0, v1, p1, p2}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aI;ILjava/util/List;)V

    .line 114
    return-void
.end method
