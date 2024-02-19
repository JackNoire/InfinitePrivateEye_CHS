.class public Lcom/umeng/newxp/view/widget/a$b;
.super Ljava/lang/Object;
.source "GridPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    .line 147
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/a$b;->f:Z

    .line 150
    iput p1, p0, Lcom/umeng/newxp/view/widget/a$b;->a:I

    .line 151
    iput p2, p0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    .line 152
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    .line 153
    return-void
.end method
