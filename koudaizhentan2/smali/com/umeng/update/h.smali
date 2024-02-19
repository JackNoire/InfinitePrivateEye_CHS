.class Lcom/umeng/update/h;
.super Ljava/lang/Object;
.source "UpdateInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/umeng/update/f;

.field private final synthetic b:Lcom/umeng/update/UmengDialogButtonListener;

.field private final synthetic c:[I


# direct methods
.method constructor <init>(Lcom/umeng/update/f;Lcom/umeng/update/UmengDialogButtonListener;[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/h;->a:Lcom/umeng/update/f;

    iput-object p2, p0, Lcom/umeng/update/h;->b:Lcom/umeng/update/UmengDialogButtonListener;

    iput-object p3, p0, Lcom/umeng/update/h;->c:[I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/umeng/update/h;->b:Lcom/umeng/update/UmengDialogButtonListener;

    iget-object v1, p0, Lcom/umeng/update/h;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/umeng/update/UmengDialogButtonListener;->onClick(I)V

    .line 175
    return-void
.end method
