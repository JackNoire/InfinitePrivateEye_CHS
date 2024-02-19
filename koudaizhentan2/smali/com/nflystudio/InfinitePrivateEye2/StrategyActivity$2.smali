.class Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$2;
.super Landroid/webkit/WebViewClient;
.source "StrategyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    .line 151
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v0, p2}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$2(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    return v0
.end method
