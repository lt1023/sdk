.class final Landroidx/media2/session/SessionCommand$Range;
.super Ljava/lang/Object;
.source "SessionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/SessionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Range"
.end annotation


# instance fields
.field public final lower:I

.field public final upper:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "lower"    # I
    .param p2, "upper"    # I

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput p1, p0, Landroidx/media2/session/SessionCommand$Range;->lower:I

    .line 684
    iput p2, p0, Landroidx/media2/session/SessionCommand$Range;->upper:I

    .line 685
    return-void
.end method
