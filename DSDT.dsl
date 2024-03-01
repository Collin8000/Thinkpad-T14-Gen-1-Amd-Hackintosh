/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT.aml, Thu Feb 29 18:37:21 2024
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000EF30 (61232)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xFD
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-R1B  "
 *     OEM Revision     0x00001360 (4960)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180313 (538444563)
 */
DefinitionBlock ("", "DSDT", 1, "LENOVO", "TP-R1B  ", 0x00001360)
{
    /*
     * iASL Warning: There were 9 external control methods found during
     * disassembly, but only 8 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.ALIB, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.APTS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.AWAK, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.I2CA, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC0.EC0_.AFN4, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPC0.EC0_.ECMS, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPC0.EC0_.HAM6, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPC0.EC0_.HKEY.TSSS, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC0.EC0_.HPLD, UnknownObj)    // (from opcode)
    External (_SB_.PEP_, UnknownObj)    // (from opcode)
    External (_SB_.TPM_.PTS_, MethodObj)    // 1 Arguments (from opcode)
    External (M019, MethodObj)    // 4 Arguments (from opcode)
    External (M020, MethodObj)    // 5 Arguments (from opcode)
    External (TPOS, UnknownObj)    // (from opcode)
    External (XOSI, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    OperationRegion (SYST, SystemMemory, 0xCC22CF98, 0x00000001)
    Field (SYST, AnyAcc, Lock, Preserve)
    {
        RV2,    8
    }

    Name (MACA, "_AUXMAX_#XXXXXXXXXXXX#")
    Name (WOLD, "_S5WOL_#01EF1700000000#")
    Name (SPS, 0x00)
    Name (OSIF, 0x00)
    Name (WNTF, 0x00)
    Name (WXPF, 0x00)
    Name (WVIS, 0x00)
    Name (WIN7, 0x00)
    Name (WIN8, 0x00)
    Name (WSPV, 0x00)
    Name (LNUX, 0x00)
    Name (H8DR, 0x00)
    Name (MEMX, 0x00)
    Name (ACST, 0x00)
    Name (FMBL, 0x01)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FNID, 0x00)
    Name (RRBF, 0x00)
    Name (NBCF, 0x00)
    OperationRegion (MNVS, SystemMemory, 0xCC236018, 0x1000)
    Field (MNVS, DWordAcc, NoLock, Preserve)
    {
        Offset (0xD00), 
        GAPA,   32, 
        GAPL,   32, 
        DCKI,   32, 
        DCKS,   32, 
        VCDL,   1, 
        VCDC,   1, 
        VCDT,   1, 
        VCDD,   1, 
            ,   1, 
        VCSS,   1, 
        VCDB,   1, 
        VCIN,   1, 
        VVPO,   8, 
        BNTN,   8, 
        BRLV,   8, 
        CDFL,   8, 
        CDAH,   8, 
        PMOD,   2, 
        PDIR,   1, 
        PDMA,   1, 
        Offset (0xD17), 
        LFDC,   1, 
        Offset (0xD18), 
        C2NA,   1, 
        C3NA,   1, 
        C4NA,   1, 
        C6NA,   1, 
        C7NA,   1, 
        Offset (0xD19), 
        Offset (0xD1A), 
            ,   2, 
            ,   1, 
        NHPS,   1, 
        NPMS,   1, 
        Offset (0xD1B), 
        UOPT,   8, 
        BTID,   32, 
        DPP0,   1, 
        DPP1,   1, 
        DPP2,   1, 
        DPP3,   1, 
        DPP4,   1, 
        DPP5,   1, 
        Offset (0xD21), 
        Offset (0xD22), 
        TCRT,   16, 
        TPSV,   16, 
        TTC1,   16, 
        TTC2,   16, 
        TTSP,   16, 
        SRAH,   8, 
        SRHE,   8, 
        SRE1,   8, 
        SRE2,   8, 
        SRE3,   8, 
        SRE4,   8, 
        SRE5,   8, 
        SRE6,   8, 
        SRU1,   8, 
        SRU2,   8, 
        SRU3,   8, 
        SRU7,   8, 
        SRU4,   8, 
        SRU5,   8, 
        SRU8,   8, 
        SRPB,   8, 
        SRLP,   8, 
        SRSA,   8, 
        SRSM,   8, 
        CWAC,   1, 
        CWAS,   1, 
        CWUE,   1, 
        CWUS,   1, 
        Offset (0xD40), 
        CWAP,   16, 
        CWAT,   16, 
        DBGC,   1, 
        Offset (0xD45), 
        FS1L,   16, 
        FS1M,   16, 
        FS1H,   16, 
        FS2L,   16, 
        FS2M,   16, 
        FS2H,   16, 
        FS3L,   16, 
        FS3M,   16, 
        FS3H,   16, 
        TATC,   1, 
            ,   6, 
        TATL,   1, 
        TATW,   8, 
        TNFT,   4, 
        TNTT,   4, 
        TDFA,   4, 
        TDTA,   4, 
        TDFD,   4, 
        TDTD,   4, 
        TCFA,   4, 
        TCTA,   4, 
        TCFD,   4, 
        TCTD,   4, 
        TSFT,   4, 
        TSTT,   4, 
        TIT0,   8, 
        TCR0,   16, 
        TPS0,   16, 
        TIT1,   8, 
        TCR1,   16, 
        TPS1,   16, 
        TIT2,   8, 
        TCR2,   16, 
        TPS2,   16, 
        TIF0,   8, 
        TIF1,   8, 
        TIF2,   8, 
        Offset (0xD78), 
        BTHI,   1, 
        Offset (0xD79), 
        HDIR,   1, 
        HDEH,   1, 
        HDSP,   1, 
        HDPP,   1, 
        HDUB,   1, 
        HDMC,   1, 
        NFCF,   1, 
        NOMC,   1, 
        TPME,   8, 
        BIDE,   4, 
        IDET,   4, 
            ,   1, 
            ,   1, 
        Offset (0xD7D), 
        DTS0,   8, 
        Offset (0xD7F), 
        DT00,   1, 
        DT01,   1, 
        DT02,   1, 
        DT03,   1, 
        Offset (0xD80), 
        LIDB,   1, 
        C4WR,   1, 
        C4AC,   1, 
        ODDX,   1, 
        CMPR,   1, 
        ILNF,   1, 
        PLUX,   1, 
        Offset (0xD81), 
        Offset (0xD8A), 
        WLAC,   8, 
        WIWK,   1, 
        Offset (0xD8C), 
            ,   4, 
            ,   1, 
        IDMM,   1, 
        Offset (0xD8D), 
            ,   3, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0xD8E), 
        Offset (0xD8F), 
            ,   4, 
        Offset (0xD90), 
        Offset (0xD91), 
        SWGP,   8, 
        IPMS,   8, 
        IPMB,   120, 
        IPMR,   24, 
        IPMO,   24, 
        IPMA,   8, 
        VIGD,   1, 
        VDSC,   1, 
        VMSH,   1, 
            ,   1, 
        VDSP,   1, 
        Offset (0xDAA), 
        Offset (0xDAD), 
        ASFT,   8, 
        PL1L,   8, 
        PL1M,   8, 
        CHKC,   32, 
        CHKE,   32, 
        ATRB,   32, 
        Offset (0xDBD), 
        PPCR,   8, 
        TPCR,   5, 
        Offset (0xDBF), 
        Offset (0xDCE), 
        CTPR,   8, 
        PPCA,   8, 
        TPCA,   5, 
        Offset (0xDD1), 
        BFWB,   296, 
        OSPX,   1, 
        OSC4,   1, 
        CPPX,   1, 
        Offset (0xDF7), 
        SPEN,   1, 
        SCRM,   1, 
            ,   1, 
        ETAU,   1, 
        IHBC,   1, 
        APMD,   1, 
        APMF,   1, 
        Offset (0xDF8), 
        FTPS,   8, 
        HIST,   8, 
        LPST,   8, 
        LWST,   8, 
        Offset (0xDFF), 
        Offset (0xE00), 
        Offset (0xE20), 
        HPET,   32, 
        PKLI,   16, 
        VLCX,   16, 
        VNIT,   8, 
        VBD0,   8, 
        VBDT,   128, 
        VBPL,   16, 
        VBPH,   16, 
        VBML,   8, 
        VBMH,   8, 
        VEDI,   1024, 
        PDCI,   16, 
        ISCG,   32, 
        ISSP,   1, 
        ISWK,   2, 
        ISFS,   3, 
        Offset (0xEC7), 
        SHA1,   160, 
        Offset (0xEDC), 
        LWCP,   1, 
        LWEN,   1, 
        IOCP,   1, 
        IOEN,   1, 
        IOST,   1, 
        Offset (0xEDD), 
        USBR,   1, 
        Offset (0xEDE), 
        Offset (0xEDF), 
        Offset (0xEE1), 
        BT2T,   1, 
        Offset (0xEE2), 
        TPPP,   8, 
        TPPC,   8, 
        CTPC,   8, 
        FNWK,   8, 
        Offset (0xEE7), 
        XHCC,   8, 
        FCAP,   16, 
        VSTD,   1, 
        VCQL,   1, 
        VTIO,   1, 
        VMYH,   1, 
        VSTP,   1, 
        VCQH,   1, 
        VDCC,   1, 
        VSFN,   1, 
        VDMC,   1, 
        VFHP,   1, 
        VIFC,   1, 
        VMMC,   1, 
        VMSC,   1, 
        VPSC,   1, 
        VCSC,   1, 
        Offset (0xEEC), 
        CICF,   4, 
        CICM,   4, 
        MYHC,   8, 
        MMCC,   8, 
        PT1D,   15, 
        Offset (0xEF1), 
        PT2D,   15, 
        Offset (0xEF3), 
        PT0D,   15, 
        Offset (0xEF5), 
        DVS0,   1, 
        DVS1,   1, 
        DVS2,   1, 
        DVS3,   1, 
        Offset (0xEF7), 
        DSTD,   15, 
        Offset (0xEF9), 
        DCQL,   15, 
        Offset (0xEFB), 
        DTIO,   15, 
        Offset (0xEFD), 
        DMYH,   15, 
        Offset (0xEFF), 
        DPST,   15, 
        Offset (0xF01), 
        DCQH,   15, 
        Offset (0xF03), 
        DDCC,   15, 
        Offset (0xF05), 
        DSFN,   15, 
        Offset (0xF07), 
        DDMC,   15, 
        Offset (0xF09), 
        DFHP,   15, 
        Offset (0xF0B), 
        DIFC,   15, 
        Offset (0xF0D), 
        DMMC,   15, 
        Offset (0xF0F), 
        DMSC,   15, 
        Offset (0xF11), 
        DPSC,   15, 
        Offset (0xF13), 
        ECSC,   15, 
        Offset (0xF15), 
        SMYH,   4, 
        SMMC,   4, 
        SPSC,   4, 
        Offset (0xF17), 
        STDV,   8, 
        SCRB,   8, 
        PMOF,   8, 
        MPID,   8, 
        VEDX,   1024, 
        SHDW,   8, 
        TPID,   16, 
        Offset (0xF9F), 
        DYPR,   32
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WLS8,   8, 
        WLS9,   8, 
        WLSA,   8, 
        WLSB,   8, 
        WLSC,   8, 
        WLSD,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8, 
        WASB,   8, 
        WASI,   16, 
        WASD,   8, 
        WASS,   32, 
        WDRV,   8, 
        WMTH,   8, 
        RTC0,   8, 
        RTC1,   8, 
        RTC2,   8
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xA00), 
        DBGB,   1024
    }

    OperationRegion (SMI0, SystemIO, 0xB2, 0x01)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMC,   8
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
        Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }

    Mutex (MSMI, 0x00)
    Method (SMI, 5, Serialized)
    {
        Acquire (MSMI, 0xFFFF)
        Store (Arg0, CMD)
        Store (0x01, ERR)
        Store (Arg1, PAR0)
        Store (Arg2, PAR1)
        Store (Arg3, PAR2)
        Store (Arg4, PAR3)
        Store (0xF5, APMC)
        While (LEqual (ERR, 0x01))
        {
            Sleep (0x01)
            Store (0xF5, APMC)
        }

        Store (PAR0, Local0)
        Release (MSMI)
        Return (Local0)
    }

    Method (RPCI, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x00, Arg0, 0x00, 0x00))
    }

    Method (WPCI, 2, NotSerialized)
    {
        SMI (0x00, 0x01, Arg0, Arg1, 0x00)
    }

    Method (MPCI, 3, NotSerialized)
    {
        SMI (0x00, 0x02, Arg0, Arg1, Arg2)
    }

    Method (RBEC, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x03, Arg0, 0x00, 0x00))
    }

    Method (WBEC, 2, NotSerialized)
    {
        SMI (0x00, 0x04, Arg0, Arg1, 0x00)
    }

    Method (MBEC, 3, NotSerialized)
    {
        SMI (0x00, 0x05, Arg0, Arg1, Arg2)
    }

    Method (RISA, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x06, Arg0, 0x00, 0x00))
    }

    Method (WISA, 2, NotSerialized)
    {
        SMI (0x00, 0x07, Arg0, Arg1, 0x00)
    }

    Method (MISA, 3, NotSerialized)
    {
        SMI (0x00, 0x08, Arg0, Arg1, Arg2)
    }

    Method (VEXP, 0, NotSerialized)
    {
        SMI (0x01, 0x00, 0x00, 0x00, 0x00)
    }

    Method (VUPS, 1, NotSerialized)
    {
        SMI (0x01, 0x01, Arg0, 0x00, 0x00)
    }

    Method (VSDS, 2, NotSerialized)
    {
        SMI (0x01, 0x02, Arg0, Arg1, 0x00)
    }

    Method (VDDC, 0, NotSerialized)
    {
        SMI (0x01, 0x03, 0x00, 0x00, 0x00)
    }

    Method (VVPD, 1, NotSerialized)
    {
        SMI (0x01, 0x04, Arg0, 0x00, 0x00)
    }

    Method (VNRS, 1, NotSerialized)
    {
        SMI (0x01, 0x05, Arg0, 0x00, 0x00)
    }

    Method (GLPW, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x06, 0x00, 0x00, 0x00))
    }

    Method (VSLD, 1, NotSerialized)
    {
        SMI (0x01, 0x07, Arg0, 0x00, 0x00)
    }

    Method (VEVT, 1, NotSerialized)
    {
        Return (SMI (0x01, 0x08, Arg0, 0x00, 0x00))
    }

    Method (VTHR, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x09, 0x00, 0x00, 0x00))
    }

    Method (VBRC, 1, NotSerialized)
    {
        SMI (0x01, 0x0A, Arg0, 0x00, 0x00)
    }

    Method (VBRG, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0E, 0x00, 0x00, 0x00))
    }

    Method (VCMS, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x0B, Arg0, Arg1, 0x00))
    }

    Method (VBTD, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0F, 0x00, 0x00, 0x00))
    }

    Method (VDYN, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x11, Arg0, Arg1, 0x00))
    }

    Method (SDPS, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x12, Arg0, Arg1, 0x00))
    }

    Method (SCMS, 1, NotSerialized)
    {
        Return (SMI (0x02, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BHDP, 2, NotSerialized)
    {
        Return (SMI (0x03, 0x00, Arg0, Arg1, 0x00))
    }

    Method (STEP, 1, NotSerialized)
    {
        SMI (0x04, Arg0, 0x00, 0x00, 0x00)
    }

    Method (SLTP, 0, NotSerialized)
    {
        SMI (0x05, 0x00, 0x00, 0x00, 0x00)
    }

    Method (CBRI, 0, NotSerialized)
    {
        SMI (0x05, 0x01, 0x00, 0x00, 0x00)
    }

    Method (BCHK, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x04, 0x00, 0x00, 0x00))
    }

    Method (BYRS, 0, NotSerialized)
    {
        SMI (0x05, 0x05, 0x00, 0x00, 0x00)
    }

    Method (LCHK, 1, NotSerialized)
    {
        Return (SMI (0x05, 0x06, Arg0, 0x00, 0x00))
    }

    Method (BLTH, 1, NotSerialized)
    {
        Return (SMI (0x06, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PRSM, 2, NotSerialized)
    {
        Return (SMI (0x07, 0x00, Arg0, Arg1, 0x00))
    }

    Method (ISOC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x03, Arg0, 0x00, 0x00))
    }

    Method (EZRC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x04, Arg0, 0x00, 0x00))
    }

    Method (WGSV, 1, NotSerialized)
    {
        Return (SMI (0x09, Arg0, 0x00, 0x00, 0x00))
    }

    Method (TSDL, 0, NotSerialized)
    {
        Return (SMI (0x0A, 0x03, 0x00, 0x00, 0x00))
    }

    Method (FLPF, 1, NotSerialized)
    {
        Return (SMI (0x0A, 0x04, Arg0, 0x00, 0x00))
    }

    Method (CSUM, 1, NotSerialized)
    {
        Return (SMI (0x0E, Arg0, 0x00, 0x00, 0x00))
    }

    Method (NVSS, 1, NotSerialized)
    {
        Return (SMI (0x0F, Arg0, 0x00, 0x00, 0x00))
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, 0x00, 0x00))
    }

    Method (AWON, 1, NotSerialized)
    {
        Return (SMI (0x12, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PMON, 2, NotSerialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (TSTR, Buffer (Local0){})
        Store (Arg0, TSTR)
        Store (TSTR, DBGB)
        SMI (0x11, Arg1, 0x00, 0x00, 0x00)
    }

    Method (UAWS, 1, NotSerialized)
    {
        Return (SMI (0x13, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BFWC, 1, NotSerialized)
    {
        Return (SMI (0x14, 0x00, Arg0, 0x00, 0x00))
    }

    Method (BFWP, 0, NotSerialized)
    {
        Return (SMI (0x14, 0x01, 0x00, 0x00, 0x00))
    }

    Method (BFWL, 0, NotSerialized)
    {
        SMI (0x14, 0x02, 0x00, 0x00, 0x00)
    }

    Method (BFWG, 1, NotSerialized)
    {
        SMI (0x14, 0x03, Arg0, 0x00, 0x00)
    }

    Method (BDMC, 1, NotSerialized)
    {
        SMI (0x14, 0x04, Arg0, 0x00, 0x00)
    }

    Method (PSIF, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x05, Arg0, Arg1, 0x00))
    }

    Method (FNSC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x06, Arg0, Arg1, 0x00))
    }

    Method (AUDC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x07, Arg0, Arg1, 0x00))
    }

    Method (SYBC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x08, Arg0, Arg1, 0x00))
    }

    Method (KBLS, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x09, Arg0, Arg1, 0x00))
    }

    Method (FPCI, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x0A, Arg0, Arg1, 0x00))
    }

    Method (UBIS, 1, NotSerialized)
    {
        Return (SMI (0x15, 0x00, Arg0, 0x00, 0x00))
    }

    Method (DIEH, 1, NotSerialized)
    {
        Return (SMI (0x16, 0x00, Arg0, 0x00, 0x00))
    }

    Method (OUTP, 2, NotSerialized)
    {
        SMI (0x17, Arg0, Arg1, 0x00, 0x00)
    }

    Method (SREQ, 3, NotSerialized)
    {
        SMI (0x18, And (Arg0, 0xFF), And (Arg1, 0xFF), And (Arg2, 0xFF), 0x00)
    }

    Method (SPMS, 1, NotSerialized)
    {
        SMI (0x19, And (Arg0, 0xFF), 0x00, 0x00, 0x00)
    }

    Method (LVSS, 2, NotSerialized)
    {
        Return (SMI (0x1A, And (Arg0, 0xFF), Arg1, 0x00, 0x00))
    }

    Method (WMEM, 5, Serialized)
    {
        Add (Arg0, Arg1, Local0)
        OperationRegion (VARM, SystemMemory, Local0, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Store (VARR, Local1)
        Store (0x7FFFFFFF, Local5)
        Or (Local5, 0x80000000, Local5)
        Add (Arg2, Arg3, Local2)
        Subtract (0x20, Local2, Local2)
        ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
        ShiftLeft (ShiftRight (Local2, Arg2), Arg2, Local2)
        ShiftLeft (Arg4, Arg2, Local3)
        Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
        Store (Local4, VARR)
    }

    Method (WFIO, 2, Serialized)
    {
        ShiftLeft (Arg0, 0x02, Local0)
        WMEM (0xFED81500, Local0, 0x16, 0x01, Arg1)
    }

    Scope (_SB)
    {
        Device (PLTF)
        {
            Name (_HID, "ACPI0010")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A05"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Device (C000)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
            }

            Device (C001)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
            }

            Device (C002)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
            }

            Device (C003)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
            }

            Device (C004)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
            }

            Device (C005)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x05)  // _UID: Unique ID
            }

            Device (C006)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x06)  // _UID: Unique ID
            }

            Device (C007)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x07)  // _UID: Unique ID
            }

            Device (C008)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x08)  // _UID: Unique ID
            }

            Device (C009)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x09)  // _UID: Unique ID
            }

            Device (C00A)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
            }

            Device (C00B)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x0B)  // _UID: Unique ID
            }

            Device (C00C)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x0C)  // _UID: Unique ID
            }

            Device (C00D)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x0D)  // _UID: Unique ID
            }

            Device (C00E)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x0E)  // _UID: Unique ID
            }

            Device (C00F)
            {
                Name (_HID, "ACPI0007")  // _HID: Hardware ID
                Name (_UID, 0x0F)  // _UID: Unique ID
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x03, 
        0x03, 
        0x00, 
        0x00
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        0x04, 
        0x00, 
        0x00
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Name (TZFG, 0x00)
    OperationRegion (DBG0, SystemIO, 0x80, 0x01)
    Field (DBG0, ByteAcc, NoLock, Preserve)
    {
        IO80,   8
    }

    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    OperationRegion (PSMI, SystemIO, 0xB2, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        BPMC,   8, 
        BPMD,   8
    }

    Method (TPST, 1, Serialized)
    {
        Add (Arg0, 0xB0000000, Local0)
        OperationRegion (VARM, SystemIO, 0x80, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        Store (Local0, VARR)
    }

    OperationRegion (P01, SystemIO, 0x0401, 0x01)
    Field (P01, ByteAcc, NoLock, Preserve)
    {
        PST1,   8
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (Arg1, Index (PRWP, One))
        If (LEqual (DAS3, Zero))
        {
            If (LLessEqual (Arg1, 0x03))
            {
                Store (Zero, Index (PRWP, One))
            }
        }

        Return (PRWP)
    }

    OperationRegion (GNVS, SystemMemory, 0xCC379C98, 0x0000000B)
    Field (GNVS, AnyAcc, NoLock, Preserve)
    {
        BRTL,   8, 
        DAS3,   8, 
        WKPM,   8, 
        PCBA,   32, 
        MWTT,   8, 
        DPTC,   8, 
        WOVS,   8
    }

    OperationRegion (OGNS, SystemMemory, 0xCC22CE98, 0x00000005)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        THPN,   8, 
        THPD,   8, 
        SDMO,   8, 
        TBEN,   8, 
        TBNH,   8
    }

    OperationRegion (PNVS, SystemMemory, 0xCC22CF18, 0x00000002)
    Field (PNVS, AnyAcc, NoLock, Preserve)
    {
        HDSI,   8, 
        HDSO,   8
    }

    Name (LINX, 0x00)
    Name (OSSP, 0x00)
    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Method (OSTP, 0, NotSerialized)
    {
        If (LEqual (OSTB, Ones))
        {
            If (CondRefOf (\XOSI, Local0))
            {
                Store (0x00, OSTB)
                Store (0x00, TPOS)
                If (XOSI ("Windows 2001"))
                {
                    Store (0x08, OSTB)
                    Store (0x08, TPOS)
                }

                If (XOSI ("Windows 2001.1"))
                {
                    Store (0x20, OSTB)
                    Store (0x20, TPOS)
                }

                If (XOSI ("Windows 2001 SP1"))
                {
                    Store (0x10, OSTB)
                    Store (0x10, TPOS)
                }

                If (XOSI ("Windows 2001 SP2"))
                {
                    Store (0x11, OSTB)
                    Store (0x11, TPOS)
                }

                If (XOSI ("Windows 2001 SP3"))
                {
                    Store (0x12, OSTB)
                    Store (0x12, TPOS)
                }

                If (XOSI ("Windows 2006"))
                {
                    Store (0x40, OSTB)
                    Store (0x40, TPOS)
                }

                If (XOSI ("Windows 2006 SP1"))
                {
                    Store (0x01, OSSP)
                    Store (0x40, OSTB)
                    Store (0x40, TPOS)
                }

                If (XOSI ("Windows 2009"))
                {
                    Store (0x01, OSSP)
                    Store (0x50, OSTB)
                    Store (0x50, TPOS)
                }

                If (XOSI ("Windows 2012"))
                {
                    Store (0x01, OSSP)
                    Store (0x60, OSTB)
                    Store (0x60, TPOS)
                }

                If (XOSI ("Windows 2013"))
                {
                    Store (0x01, OSSP)
                    Store (0x61, OSTB)
                    Store (0x61, TPOS)
                }

                If (XOSI ("Windows 2015"))
                {
                    Store (0x01, OSSP)
                    Store (0x01, WIN8)
                    Store (0x70, OSTB)
                    Store (0x70, TPOS)
                }

                If (XOSI ("Windows 2016"))
                {
                    Store (0x01, OSSP)
                    Store (0x01, WIN8)
                    Store (0x70, OSTB)
                    Store (0x70, TPOS)
                }

                If (XOSI ("Linux"))
                {
                    Store (0x01, LINX)
                    Store (0x80, OSTB)
                    Store (0x80, TPOS)
                }
            }
            ElseIf (CondRefOf (\_OS, Local0))
            {
                If (SEQL (_OS, "Microsoft Windows"))
                {
                    Store (0x01, OSTB)
                    Store (0x01, TPOS)
                }
                ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    Store (0x02, OSTB)
                    Store (0x02, TPOS)
                }
                ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                {
                    Store (0x04, OSTB)
                    Store (0x04, TPOS)
                }
                Else
                {
                    Store (0x00, OSTB)
                    Store (0x00, TPOS)
                }
            }
            Else
            {
                Store (0x00, OSTB)
                Store (0x00, TPOS)
            }

            If (LEqual (TPOS, 0x80)){}
        }

        Return (OSTB)
    }

    Method (SEQL, 2, Serialized)
    {
        Store (SizeOf (Arg0), Local0)
        Store (SizeOf (Arg1), Local1)
        If (LNotEqual (Local0, Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0){})
        Store (Arg0, BUF0)
        Name (BUF1, Buffer (Local0){})
        Store (Arg1, BUF1)
        Store (Zero, Local2)
        While (LLess (Local2, Local0))
        {
            Store (DerefOf (Index (BUF0, Local2)), Local3)
            Store (DerefOf (Index (BUF1, Local2)), Local4)
            If (LNotEqual (Local3, Local4))
            {
                Return (Zero)
            }

            Increment (Local2)
        }

        Return (One)
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Arg0, P80H)
        Store (0x01, \_SB.PCI0.SMB.PEWD)
        Store (0x01, \_SB.PCI0.SMB.P2IS)
        Store (0x01, \_SB.PCI0.SMB.P2WS)
        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }

        If (LEqual (Arg0, 0x04)){}
        If (LEqual (Arg0, 0x03))
        {
            Store (Zero, \_SB.PCI0.SMB.RSTU)
        }

        Store (0x01, \_SB.PCI0.SMB.CLPS)
        Store (0x01, \_SB.PCI0.SMB.SLPS)
        Store (\_SB.PCI0.SMB.PEWS, \_SB.PCI0.SMB.PEWS)
        \_SB.APTS (Arg0)
        Store (0x01, Local0)
        If (LEqual (Arg0, SPS))
        {
            Store (0x00, Local0)
        }

        If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x06)))
        {
            Store (0x00, Local0)
        }

        If (Local0)
        {
            Store (Arg0, SPS)
            \_SB.PCI0.LPC0.EC0.HKEY.MHKE (0x00)
            If (\_SB.PCI0.LPC0.EC0.KBLT)
            {
                SCMS (0x0D)
            }

            If (LEqual (Arg0, 0x01))
            {
                Store (\_SB.PCI0.LPC0.EC0.HFNI, FNID)
                Store (0x00, \_SB.PCI0.LPC0.EC0.HFNI)
                Store (0x00, \_SB.PCI0.LPC0.EC0.HFSP)
            }

            If (LEqual (Arg0, 0x03))
            {
                Store (0x00, \_SB.PCI0.LPC0.EC0.S3ST)
                Store (0x01, \_SB.PCI0.LPC0.EC0.S3ST)
                SLTP ()
                Store (\_SB.PCI0.LPC0.EC0.AC._PSR (), ACST)
                If (LEqual (FNWK, 0x01))
                {
                    If (H8DR)
                    {
                        Store (0x00, \_SB.PCI0.LPC0.EC0.HWFN)
                    }
                    Else
                    {
                        MBEC (0x32, 0xEF, 0x00)
                    }
                }
            }

            If (LEqual (Arg0, 0x04))
            {
                Store (0x00, \_SB.PCI0.LPC0.EC0.S4ST)
                Store (0x01, \_SB.PCI0.LPC0.EC0.S4ST)
                \_SB.SLPB._PSW (0x00)
                SLTP ()
                AWON (0x04)
            }

            If (LEqual (Arg0, 0x05))
            {
                Store (0x00, \_SB.PCI0.LPC0.EC0.S5ST)
                Store (0x01, \_SB.PCI0.LPC0.EC0.S5ST)
                SLTP ()
                AWON (0x05)
            }

            If (LGreaterEqual (Arg0, 0x04))
            {
                Store (0x00, \_SB.PCI0.LPC0.EC0.HWLB)
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC0.EC0.HWLB)
            }

            If (LGreaterEqual (Arg0, 0x03))
            {
                Store (0x01, \_SB.PCI0.LPC0.EC0.HCMU)
            }

            If (LNotEqual (Arg0, 0x05)){}
            \_SB.PCI0.LPC0.EC0.HKEY.WGPS (Arg0)
        }
    }

    OperationRegion (XMOS, SystemIO, 0x72, 0x02)
    Field (XMOS, ByteAcc, Lock, Preserve)
    {
        XIDX,   8, 
        XDAT,   8
    }

    IndexField (XIDX, XDAT, ByteAcc, Lock, Preserve)
    {
        Offset (0xAE), 
        WKSR,   8
    }

    Name (WAKI, Package (0x02)
    {
        0x00, 
        0x00
    })
    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        ShiftLeft (Arg0, 0x04, P80H)
        If (LEqual (Arg0, 0x03))
        {
            Sleep (0x01F4)
            Store (One, \_SB.PCI0.SMB.RSTU)
        }

        Store (\_SB.PCI0.SMB.PEWS, \_SB.PCI0.SMB.PEWS)
        Store (0x01, \_SB.PCI0.SMB.PWDE)
        Store (Zero, \_SB.PCI0.SMB.PEWD)
        Store (0x01, \_SB.PCI0.SMB.P2IS)
        Store (0x01, \_SB.PCI0.SMB.P2WS)
        \_SB.AWAK (Arg0)
        If (LEqual (Arg0, 0x03))
        {
            If (GPIC)
            {
                \_SB.PCI0.LPC0.DSPI ()
            }

            If (LEqual (WKSR, 0x61))
            {
                Notify (\_SB.PWRB, 0x02)
            }
            ElseIf (LEqual (WKSR, 0x68))
            {
                Notify (\_SB.PWRB, 0x02)
            }
            ElseIf (LEqual (WKSR, 0x6B))
            {
                Notify (\_SB.PWRB, 0x02)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            If (GPIC)
            {
                \_SB.PCI0.LPC0.DSPI ()
            }

            Notify (\_SB.PWRB, 0x02)
        }

        If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x05)))
        {
            Return (WAKI)
        }

        Store (0x00, SPS)
        Store (0x01, \_SB.PCI0.LPC0.EC0.ACOS)
        Store (0x00, Local0)
        If (LEqual (TPOS, 0x40))
        {
            Store (0x01, Local0)
        }

        If (LEqual (TPOS, 0x80))
        {
            Store (0x02, Local0)
        }

        If (LEqual (TPOS, 0x50))
        {
            Store (0x03, Local0)
        }

        If (LEqual (TPOS, 0x60))
        {
            Store (0x04, Local0)
        }

        If (LEqual (TPOS, 0x61))
        {
            Store (0x04, Local0)
        }

        If (LEqual (TPOS, 0x70))
        {
            Store (0x05, Local0)
        }

        Store (Local0, \_SB.PCI0.LPC0.EC0.OTYE)
        Store (0x00, \_SB.PCI0.LPC0.EC0.HCMU)
        Store (0x00, \_SB.PCI0.LPC0.EC0.HUBS)
        \_SB.PCI0.LPC0.EC0.EVNT (0x01)
        \_SB.PCI0.LPC0.EC0.HKEY.MHKE (0x01)
        \_SB.PCI0.LPC0.EC0.FNST ()
        SCMS (0x0D)
        Store (0x00, LIDB)
        \_SB.PCI0.LPC0.EC0.HKEY.CSSS ()
        If (LEqual (Arg0, 0x01))
        {
            Store (\_SB.PCI0.LPC0.EC0.HFNI, FNID)
        }

        If (LEqual (Arg0, 0x03))
        {
            NVSS (0x00)
            Store (0x00, IOEN)
            Store (0x00, IOST)
            If (LEqual (ISWK, 0x01))
            {
                If (\_SB.PCI0.LPC0.EC0.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC0.EC0.HKEY.MHKQ (0x6070)
                }
            }

            VCMS (0x01, \_SB.LID._LID ())
            AWON (0x00)
            If (LEqual (WLAC, 0x02)){}
            ElseIf (LAnd (\_SB.PCI0.LPC0.EC0.ELNK, LEqual (WLAC, 0x01)))
            {
                Store (0x00, \_SB.PCI0.LPC0.EC0.DCWL)
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC0.EC0.DCWL)
            }

            Store (0x00, \_SB.PCI0.LPC0.EC0.S3RM)
            Store (0x01, \_SB.PCI0.LPC0.EC0.S3RM)
        }

        If (LEqual (Arg0, 0x04))
        {
            NVSS (0x00)
            Store (0x00, \_SB.PCI0.LPC0.EC0.HSPA)
            Store (AUDC (0x00, 0x00), Local0)
            And (Local0, 0x01, Local0)
            If (LEqual (Local0, 0x00))
            {
                WFIO (0x54, 0x00)
            }
            Else
            {
                WFIO (0x54, 0x01)
            }

            Store (0x00, IOEN)
            Store (0x00, IOST)
            If (LEqual (ISWK, 0x02))
            {
                If (\_SB.PCI0.LPC0.EC0.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC0.EC0.HKEY.MHKQ (0x6080)
                }
            }

            If (LEqual (WLAC, 0x02)){}
            ElseIf (LAnd (\_SB.PCI0.LPC0.EC0.ELNK, LEqual (WLAC, 0x01)))
            {
                Store (0x00, \_SB.PCI0.LPC0.EC0.DCWL)
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC0.EC0.DCWL)
            }

            Store (0x00, \_SB.PCI0.LPC0.EC0.S4RM)
            Store (0x01, \_SB.PCI0.LPC0.EC0.S4RM)
        }

        \_SB.PCI0.LPC0.EC0.BATW (Arg0)
        \_SB.PCI0.LPC0.EC0.HKEY.WGWK (Arg0)
        VSLD (\_SB.LID._LID ())
        If (LLess (Arg0, 0x04))
        {
            If (LOr (And (RRBF, 0x02), And (\_SB.PCI0.LPC0.EC0.HWAC, 0x02)))
            {
                ShiftLeft (Arg0, 0x08, Local0)
                Store (Or (0x2013, Local0), Local0)
                \_SB.PCI0.LPC0.EC0.HKEY.MHKQ (Local0)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (0x00, Local0)
            Store (CSUM (0x00), Local1)
            If (LNotEqual (Local1, CHKC))
            {
                Store (0x01, Local0)
                Store (Local1, CHKC)
            }

            Store (CSUM (0x01), Local1)
            If (LNotEqual (Local1, CHKE))
            {
                Store (0x01, Local0)
                Store (Local1, CHKE)
            }

            If (Local0)
            {
                Notify (_SB, 0x00)
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (\_SB.PCI0.LPC0.EC0.HMUT)
            {
                WFIO (0x54, 0x01)
            }
            Else
            {
                WFIO (0x54, 0x00)
            }

            If (\_SB.PCI0.LPC0.EC0.HFNE)
            {
                If (LEqual (0x00, \_SB.PCI0.LPC0.EC0.HFNS))
                {
                    WFIO (0x18, 0x01)
                }
                Else
                {
                    WFIO (0x18, 0x00)
                }
            }
            ElseIf (\_SB.PCI0.LPC0.EC0.FNKC)
            {
                WFIO (0x18, 0x00)
            }
            Else
            {
                WFIO (0x18, 0x01)
            }

            \_SB.PCI0.LPC0.EC0.HKEY.DYTC (0x000F0001)
        }

        Store (Zero, RRBF)
        Store (0xFF, \_SB.PCI0.LPC0.EC0.AC.ACDC)
        Notify (\_SB.PCI0.LPC0.EC0.AC, 0x80)
        Notify (\_SB.PCI0, 0x00)
        Return (WAKI)
    }

    Scope (_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If (LEqual (Arg0, 0x00))
            {
                \_SB.PCI0.LPC0.EC0.LED (0x00, 0x00)
                \_SB.PCI0.LPC0.EC0.LED (0x0A, 0x00)
                \_SB.PCI0.LPC0.EC0.LED (0x07, 0x00)
            }

            If (LEqual (Arg0, 0x01))
            {
                If (LOr (SPS, WNTF))
                {
                    \_SB.PCI0.LPC0.EC0.BEEP (0x05)
                }

                \_SB.PCI0.LPC0.EC0.LED (0x00, 0x80)
                \_SB.PCI0.LPC0.EC0.LED (0x0A, 0x80)
                \_SB.PCI0.LPC0.EC0.LED (0x07, 0x00)
            }

            If (LEqual (Arg0, 0x02))
            {
                \_SB.PCI0.LPC0.EC0.LED (0x00, 0x80)
                \_SB.PCI0.LPC0.EC0.LED (0x0A, 0x80)
                \_SB.PCI0.LPC0.EC0.LED (0x07, 0xC0)
            }

            If (LEqual (Arg0, 0x03))
            {
                If (LGreater (SPS, 0x03))
                {
                    \_SB.PCI0.LPC0.EC0.BEEP (0x07)
                }
                ElseIf (LEqual (SPS, 0x03))
                {
                    \_SB.PCI0.LPC0.EC0.BEEP (0x03)
                }
                Else
                {
                    \_SB.PCI0.LPC0.EC0.BEEP (0x04)
                }

                If (LEqual (SPS, 0x03)){}
                Else
                {
                    \_SB.PCI0.LPC0.EC0.LED (0x00, 0x80)
                    \_SB.PCI0.LPC0.EC0.LED (0x0A, 0x80)
                }

                \_SB.PCI0.LPC0.EC0.LED (0x00, 0xC0)
                Stall (0x64)
                \_SB.PCI0.LPC0.EC0.LED (0x0A, 0xC0)
            }

            If (LEqual (Arg0, 0x04))
            {
                \_SB.PCI0.LPC0.EC0.BEEP (0x03)
                \_SB.PCI0.LPC0.EC0.LED (0x07, 0xC0)
                \_SB.PCI0.LPC0.EC0.LED (0x00, 0xC0)
                \_SB.PCI0.LPC0.EC0.LED (0x0A, 0xC0)
                Store (0xC0, \_SB.PCI0.LPC0.EC0.HLCL)
                Sleep (0x64)
                Store (0xCA, Local0)
                Store (Local0, \_SB.PCI0.LPC0.EC0.HLCL)
            }
        }
    }

    Name (GPIC, 0x00)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC)
        If (Arg0)
        {
            \_SB.PCI0.LPC0.DSPI ()
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_BBN, 0x00)  // _BBN: BIOS Bus Number
            Name (_ADR, 0x00)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LNotEqual (GPIC, Zero))
                {
                    ^LPC0.DSPI ()
                }

                OSTP ()
            }

            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (LEqual (Arg0, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (LEqual (TBEN, One))
                    {
                        If (LNotEqual (TBNH, Zero))
                        {
                            And (CTRL, 0xFFFFFFF5, CTRL)
                        }
                        Else
                        {
                            And (CTRL, 0xFFFFFFF4, CTRL)
                        }
                    }

                    If (LNotEqual (And (SUPP, 0x16), 0x16))
                    {
                        And (CTRL, 0x1E, CTRL)
                    }

                    And (CTRL, 0x1D, CTRL)
                    If (Not (And (CDW1, 0x01)))
                    {
                        If (And (CTRL, 0x01)){}
                        If (And (CTRL, 0x04)){}
                        If (And (CTRL, 0x10)){}
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Return (Arg3)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Arg3)
                }
            }

            OperationRegion (K8ST, SystemMemory, 0xCC379B98, 0x00000068)
            Field (K8ST, AnyAcc, NoLock, Preserve)
            {
                C0_0,   16, 
                C2_0,   16, 
                C4_0,   16, 
                C6_0,   16, 
                C8_0,   16, 
                CA_0,   16, 
                CC_0,   16, 
                CE_0,   16, 
                D0_0,   16, 
                D2_0,   16, 
                D4_0,   16, 
                D6_0,   16, 
                D8_0,   16, 
                DA_0,   16, 
                DC_0,   16, 
                DE_0,   16, 
                E0_0,   16, 
                E2_0,   16, 
                E4_0,   16, 
                E6_0,   16, 
                E8_0,   16, 
                EA_0,   16, 
                EC_0,   16, 
                EE_0,   16, 
                F0_0,   16, 
                F2_0,   16, 
                F4_0,   16, 
                F6_0,   16, 
                F8_0,   16, 
                FA_0,   16, 
                FC_0,   16, 
                FE_0,   16, 
                TOML,   32, 
                TOMH,   32, 
                PCIB,   32, 
                PCIS,   32, 
                T1MN,   64, 
                T1MX,   64, 
                T1LN,   64
            }

            Name (RSRC, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, SubDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    0x00,, )
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C2000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C6000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000C9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CA000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CE000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D2000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D6000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000D9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DA000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DE000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E2000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E6000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000E9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EA000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EE000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    0x00,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFC000000,         // Range Minimum
                    0xFDFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x02000000,         // Length
                    0x00,, _Y01, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    0x00,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    0x00,, , TypeStatic, DenseTranslation)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RSRC, \_SB.PCI0._Y00._MIN, BT1S)  // _MIN: Minimum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y00._MAX, BT1M)  // _MAX: Maximum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y00._LEN, BT1L)  // _LEN: Length
                CreateDWordField (RSRC, \_SB.PCI0._Y01._MIN, BT2S)  // _MIN: Minimum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y01._MAX, BT2M)  // _MAX: Maximum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y01._LEN, BT2L)  // _LEN: Length
                Store (PCIB, Local0)
                Store (TOML, BT1S)
                Store (Subtract (Local0, 0x01), BT1M)
                Subtract (Local0, TOML, BT1L)
                CreateQWordField (RSRC, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateQWordField (RSRC, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateQWordField (RSRC, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                Store (T1MN, M1MN)
                Store (T1MX, M1MX)
                Store (T1LN, M1LN)
                Return (RSRC)
            }

            Device (MEMR)
            {
                Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                Name (MEM1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0F50,             // Range Minimum
                        0x0F50,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y03)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y04)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y05)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y03._BAS, MB01)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y03._LEN, ML01)  // _LEN: Length
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._BAS, MB02)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._LEN, ML02)  // _LEN: Length
                    If (GPIC)
                    {
                        Store (0xFEC00000, MB01)
                        Store (0xFEE00000, MB02)
                        Store (0x2000, ML01)
                        Store (0x1000, ML02)
                    }

                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y05._BAS, MB03)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y05._LEN, ML03)  // _LEN: Length
                    Store (PCIB, MB03)
                    Store (PCIS, ML03)
                    Return (MEM1)
                }
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (GPIC)
                {
                    Return (Package (0x0E)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x00, 
                            0x00, 
                            0x28
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x01, 
                            0x00, 
                            0x29
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x02, 
                            0x00, 
                            0x2A
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x00, 
                            0x00, 
                            0x24
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x01, 
                            0x00, 
                            0x25
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x02, 
                            0x00, 
                            0x26
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x03, 
                            0x00, 
                            0x27
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x00, 
                            0x00, 
                            0x20
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x01, 
                            0x00, 
                            0x21
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x01, 
                            0x00, 
                            0x22
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x00, 
                            0x00, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x01, 
                            0x00, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x02, 
                            0x00, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x03, 
                            0x00, 
                            0x13
                        }
                    })
                }
                Else
                {
                    Return (Package (0x0E)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x00, 
                            ^LPC0.LNKA, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x02, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x00, 
                            ^LPC0.LNKE, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x01, 
                            ^LPC0.LNKF, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x02, 
                            ^LPC0.LNKG, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x03, 
                            ^LPC0.LNKH, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x00, 
                            ^LPC0.LNKA, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0008FFFF, 
                            0x02, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x00, 
                            ^LPC0.LNKA, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x02, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x03, 
                            ^LPC0.LNKD, 
                            0x00
                        }
                    })
                }
            }

            OperationRegion (BAR1, PCI_Config, 0x14, 0x04)
            Field (BAR1, ByteAcc, NoLock, Preserve)
            {
                NBBA,   32
            }

            OperationRegion (PM80, SystemMemory, 0xFED80380, 0x10)
            Field (PM80, AnyAcc, NoLock, Preserve)
            {
                SI3R,   1
            }

            Name (NBRI, 0x00)
            Name (NBAR, 0x00)
            Name (NCMD, 0x00)
            Device (GPP0)
            {
                Name (_ADR, 0x00020007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x08, 0x03))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x2A
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x2B
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x28
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x29
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKD, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKB, 
                                0x00
                            }
                        })
                    }
                }

                Scope (\_SB.PCI0.GPP0)
                {
                    Device (RESA)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x08, 
                            0x03
                        })
                        Device (RHUB)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Name (UPCN, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (PLDC, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x24, 0x01, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00,
                                    /* 0010 */  0xDD, 0x00, 0x95, 0x00                         
                                }
                            })
                            Name (PLDN, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x99, 0x11, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
                                }
                            })
                            Device (SS01)
                            {
                                Name (_ADR, 0x01)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (UPCN)
                                }
                            }

                            Device (SS02)
                            {
                                Name (_ADR, 0x02)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (UPCN)
                                }
                            }

                            Device (HS03)
                            {
                                Name (_ADR, 0x03)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (UPCN)
                                }
                            }

                            Device (HSCM)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (UPCN)
                                }

                                Device (PCAM)
                                {
                                    Name (_ADR, 0x04)  // _ADR: Address
                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (PLDC)
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }

                                Device (CMIR)
                                {
                                    Name (_ADR, 0x06)  // _ADR: Address
                                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                                    {
                                        Return (PLDC)
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00020006)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x0D, 0x03))
                    }
                    Else
                    {
                        Return (GPRW (0x0D, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x2E
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x2F
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x2C
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x2D
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKH, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKF, 
                                0x00
                            }
                        })
                    }
                }

                Device (WWAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00020004)  // _ADR: Address
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                {
                    Return (Package (0x01)
                    {
                        PEP
                    })
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x0E, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x0E, Zero))
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x30
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x31
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x32
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x33
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }

                Device (RTL8)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                    Name (D0U1, 0x01)
                    Name (D3U1, 0x01)
                    PowerResource (P0U1, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (D0U1)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            Store (0x01, D0U1)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            Store (0x00, D0U1)
                        }
                    }

                    PowerResource (P3U1, 0x00, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (D3U1)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            Store (0x01, D3U1)
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            Store (0x00, D3U1)
                        }
                    }

                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        P0U1
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        P3U1
                    })
                }
            }

            Device (GPP5)
            {
                Name (_ADR, 0x00020005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x08, 0x03))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                OperationRegion (PCG1, PCI_Config, 0x58, 0x20)
                Field (PCG1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    LNKC,   2
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Store (0x02, LNKC)
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Store (0x02, LNKC)
                }

                Device (L850)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        If (LEqual (WKPM, One))
                        {
                            Return (GPRW (0x08, 0x03))
                        }
                        Else
                        {
                            Return (GPRW (0x08, Zero))
                        }
                    }

                    OperationRegion (PCG2, PCI_Config, 0x00, 0x90)
                    Field (PCG2, DWordAcc, NoLock, Preserve)
                    {
                        VID0,   16, 
                        DID0,   16, 
                        Offset (0x80), 
                        APML,   2
                    }

                    Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                    {
                        Store (0x02, LNKC)
                        WFIO (0x08, 0x00)
                        Sleep (0x32)
                        Notify (L850, 0x01)
                        Store (0x02, LNKC)
                        WFIO (0x08, 0x01)
                        Sleep (0x3E)
                        Notify (_SB, 0x00)
                        Sleep (0x64)
                        Notify (PCI0, 0x00)
                        Sleep (0x64)
                        Notify (L850, 0x01)
                        Store (0x02, LNKC)
                        Store (0x02, APML)
                        Return (0x00)
                    }

                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (LEqual (Arg0, ToUUID ("bad01b75-22a8-4f48-8792-bdde9467747d")))
                        {
                            If (LEqual (Arg2, Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x09                                           
                                })
                            }

                            If (LEqual (Arg2, 0x01)){}
                            If (LEqual (Arg2, 0x02)){}
                            If (LEqual (Arg2, 0x03))
                            {
                                Return (0x03)
                            }
                        }

                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }

                    Method (LFCT, 0, NotSerialized)
                    {
                        If (LEqual (DID0, 0x7360))
                        {
                            Store (0x02, APML)
                            Return (0x00)
                        }
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x32
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x33
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x30
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x31
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKD, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKB, 
                                0x00
                            }
                        })
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg0, ToUUID ("079ff457-64a8-44be-bd8a-6955052b9b92")))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Switch (Arg1)
                                {
                                    Case (0x01)
                                    {
                                        Return (Buffer (0x01)
                                        {
                                             0x03                                           
                                        })
                                    }

                                }

                                Return (Buffer (0x01)
                                {
                                     0x00                                           
                                })
                            }
                            Case (0x01)
                            {
                            }

                        }
                    }
                    ElseIf (LEqual (Arg0, ToUUID ("f21202bf-8f78-4dc6-a5b3-1f738e285ade")))
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            If (LEqual (Arg1, Zero))
                            {
                                Return (Buffer (0x01)
                                {
                                     0x41                                           
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x01)
                                {
                                     0x00                                           
                                })
                            }
                        }

                        If (LEqual (Arg2, One))
                        {
                            Return (Buffer (0x01)
                            {
                                 0x00                                           
                            })
                        }

                        If (LEqual (Arg2, 0x02))
                        {
                            Return (Buffer (0x01)
                            {
                                 0x00                                           
                            })
                        }

                        If (LEqual (Arg2, 0x03))
                        {
                            Return (Buffer (0x01)
                            {
                                 0x00                                           
                            })
                        }

                        If (LEqual (Arg2, 0x04))
                        {
                            Return (Buffer (0x01)
                            {
                                 0x00                                           
                            })
                        }

                        If (LEqual (Arg2, 0x05))
                        {
                            Return (Buffer (0x01)
                            {
                                 0x00                                           
                            })
                        }

                        If (LEqual (Arg2, 0x06))
                        {
                            Return (Buffer (0x01)
                            {
                                 0x03                                           
                            })
                        }

                        Return (0x00)
                    }
                    Else
                    {
                        Return (Buffer (0x01)
                        {
                             0x00                                           
                        })
                    }
                }
            }

            Device (GPP6)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x03))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x28
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x29
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x2A
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x2B
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }

                Device (LAN2)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }

                Device (RUSB)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }
            }

            Device (GPP7)
            {
                Name (_ADR, 0x00020003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (LEqual (WKPM, One))
                    {
                        Return (GPRW (0x08, 0x03))
                    }
                    Else
                    {
                        Return (GPRW (0x0E, Zero))
                    }
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (RPXX, PCI_Config, 0x00, 0x10)
                    Field (RPXX, AnyAcc, NoLock, Preserve)
                    {
                        VDID,   32
                    }

                    OperationRegion (FLDR, PCI_Config, 0x44, 0x8A)
                    Field (FLDR, ByteAcc, NoLock, Preserve)
                    {
                        DCAP,   32, 
                        DCTR,   16, 
                        Offset (0x84), 
                        MCAP,   32, 
                        MCTR,   16
                    }

                    Method (WIST, 0, Serialized)
                    {
                        If (CondRefOf (VDID))
                        {
                            Switch (ToInteger (VDID))
                            {
                                Case (0x095A8086)
                                {
                                    Return (0x01)
                                }
                                Case (0x095B8086)
                                {
                                    Return (0x01)
                                }
                                Case (0x31658086)
                                {
                                    Return (0x01)
                                }
                                Case (0x31668086)
                                {
                                    Return (0x01)
                                }
                                Case (0x08B18086)
                                {
                                    Return (0x01)
                                }
                                Case (0x08B28086)
                                {
                                    Return (0x01)
                                }
                                Case (0x08B38086)
                                {
                                    Return (0x01)
                                }
                                Case (0x08B48086)
                                {
                                    Return (0x01)
                                }
                                Case (0x24F38086)
                                {
                                    Return (0x01)
                                }
                                Case (0x24F48086)
                                {
                                    Return (0x01)
                                }
                                Case (0x24F58086)
                                {
                                    Return (0x01)
                                }
                                Case (0x24F68086)
                                {
                                    Return (0x01)
                                }
                                Case (0x24FD8086)
                                {
                                    Return (0x01)
                                }
                                Case (0x24FB8086)
                                {
                                    Return (0x01)
                                }
                                Case (0x25268086)
                                {
                                    Return (0x01)
                                }
                                Case (0x27238086)
                                {
                                    Return (0x01)
                                }
                                Case (0xB82210EC)
                                {
                                    Return (0x01)
                                }
                                Default
                                {
                                    Return (0x00)
                                }

                            }
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    PowerResource (WRST, 0x05, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x01)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                        }

                        Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                        {
                            If (LEqual (VDID, 0x796114C3))
                            {
                                If (And (MCAP, 0x10000000))
                                {
                                    Store (MCTR, Local0)
                                    Or (Local0, 0x8000, Local0)
                                    Store (Local0, MCTR)
                                }
                            }
                            ElseIf (And (DCAP, 0x10000000))
                            {
                                Store (DCTR, Local0)
                                Or (Local0, 0x8000, Local0)
                                Store (Local0, DCTR)
                            }
                        }
                    }

                    Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                    {
                        Return (Package (0x01)
                        {
                            WRST
                        })
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x2C
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x2D
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x2E
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x2F
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }

                Device (DEV0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (DEV1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (GPP7)
            {
                Method (RHRS, 0, NotSerialized)
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0012
                            }
                        GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x00AC
                            }
                    })
                    Return (RBUF)
                }

                Device (WLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                }
            }

            Device (GPP8)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x24
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x25
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x26
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x27
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }

                PowerResource (P0NV, 0x00, 0x0000)
                {
                    Name (D0NV, 0x01)
                    Name (SLPS, 0x01)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        TPST (0x60AA)
                        Return (D0NV)
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        TPST (0x60D0)
                        If (LEqual (DAS3, 0x00))
                        {
                            If (SI3R)
                            {
                                TPST (0x60E0)
                                M020 (NBRI, 0x00, 0x00, 0x04, Or (NCMD, 0x06))
                                M020 (NBRI, 0x00, 0x00, 0x10, NBAR)
                                Store (HDSI, APMC)
                                Store (0x01, SLPS)
                                Store (0x00, SI3R)
                                TPST (0x60E1)
                            }

                            Store (0x01, D0NV)
                        }
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        TPST (0x60D3)
                        If (LEqual (DAS3, 0x00))
                        {
                            If (LEqual (SLPS, 0x01))
                            {
                                Store (M019 (0x00, 0x02, 0x01, 0x18), Local0)
                                ShiftRight (And (Local0, 0xFF00), 0x08, NBRI)
                                Store (M019 (NBRI, 0x00, 0x00, 0x04), NCMD)
                                Store (M019 (NBRI, 0x00, 0x00, 0x10), NBAR)
                                Store (HDSO, APMC)
                                Store (0x00, D0NV)
                            }

                            Store (0x00, SLPS)
                        }
                    }
                }

                Device (NVME)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        P0NV
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        P0NV
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        P0NV
                    })
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        TPST (0x6050)
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        TPST (0x6053)
                    }
                }
            }

            Device (GP17)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x03))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x26
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x27
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x24
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x25
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKH, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKF, 
                                0x00
                            }
                        })
                    }
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (AF7E, 0x80000001)
                    Name (DOSA, 0x00)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        Store (Arg0, DOSA)
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x05)
                        {
                            0x00010100, 
                            0x00010110, 
                            0x0200, 
                            0x00010210, 
                            0x00010220
                        })
                    }

                    Device (LCD)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0110)
                        }

                        Name (BRLV, Buffer (0x11)
                        {
                            /* 0000 */  0x52, 0x22, 0x02, 0x08, 0x0E, 0x16, 0x1C, 0x22,
                            /* 0008 */  0x2A, 0x30, 0x36, 0x3E, 0x44, 0x4B, 0x52, 0x58,
                            /* 0010 */  0x64                                           
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            If (LEqual (AF7E, 0x80000001))
                            {
                                Return (^^^^LPC0.EC0.BRTW)
                            }
                            Else
                            {
                                Return (BRLV)
                            }
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            If (LEqual (AF7E, 0x80000001))
                            {
                                Store (Match (^^^^LPC0.EC0.BRTW, MEQ, Arg0, MTR, 0x00, 0x02), Local0)
                                Subtract (Local0, 0x02, Local1)
                                Store (Local1, \BRLV)
                                SCMS (0x16)
                            }
                        }

                        Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                        {
                            If (LEqual (Arg0, 0x01))
                            {
                                Return (VEDI)
                            }
                            ElseIf (LEqual (Arg0, 0x02))
                            {
                                Return (VEDI)
                            }

                            Return (0x00)
                        }
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (PSP)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }

                Device (ACP)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_WOV, 0, NotSerialized)
                    {
                        If (HDMC)
                        {
                            Return (0x00)
                        }

                        If (NOMC)
                        {
                            Return (0x00)
                        }

                        Return (0x01)
                    }
                }

                Device (AZAL)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (XHC0)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    OperationRegion (PMOP, PCI_Config, 0x50, 0x08)
                    Field (PMOP, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x01), 
                        Offset (0x02), 
                            ,   3, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                            ,   3, 
                            ,   1, 
                            ,   1, 
                        Offset (0x04), 
                        PSTA,   2, 
                            ,   1, 
                            ,   1, 
                            ,   3, 
                        Offset (0x05), 
                            ,   4, 
                            ,   2, 
                        PMES,   1, 
                            ,   2
                    }

                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x19, 0x03))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Name (UPCN, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Name (UPC4, Package (0x04)
                        {
                            0xFF, 
                            0x09, 
                            0x00, 
                            0x00
                        })
                        Name (UPC3, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            0x00, 
                            0x00
                        })
                        Name (UPC5, Package (0x04)
                        {
                            0xFF, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (PLDN, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x99, 0x11, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD1, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD2, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD3, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x71, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD4, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x24, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLDC, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x24, 0x01, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x88, 0xFF, 0xB8, 0xFF                         
                            }
                        })
                        Name (PLDW, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE0, 0x1E, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Device (HS01)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC4)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1)
                            }
                        }

                        Device (HS02)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC5)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD2)
                            }
                        }

                        Device (HS03)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDN)
                            }
                        }

                        Device (HS04)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDN)
                            }
                        }

                        Device (SS01)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC4)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1)
                            }
                        }

                        Device (SS02)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC3)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD2)
                            }
                        }

                        Device (SS03)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }
                        }

                        Device (SS04)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }
                        }
                    }
                }

                Device (XHC1)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x19, 0x03))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Name (UPCN, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Name (UPC3, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            0x00, 
                            0x00
                        })
                        Name (UPC4, Package (0x04)
                        {
                            0xFF, 
                            0x09, 
                            0x00, 
                            0x00
                        })
                        Name (UPC5, Package (0x04)
                        {
                            0xFF, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (PLDN, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x99, 0x11, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD5, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD6, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x69, 0x0C, 0x80, 0x04, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD7, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x71, 0x0C, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLD8, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x71, 0x0C, 0x80, 0x05, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Name (PLDC, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0x24, 0x01, 0x80, 0x03, 0x00, 0x00, 0x00, 0x00,
                                /* 0010 */  0x88, 0xFF, 0xB8, 0xFF                         
                            }
                        })
                        Name (PLDW, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                /* 0008 */  0xE0, 0x1E, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        Device (HS01)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC4)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD5)
                            }
                        }

                        Device (HS02)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC5)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD6)
                            }
                        }

                        Device (HS03)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDN)
                            }
                        }

                        Device (HS04)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLDN)
                            }
                        }

                        Device (SS01)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC4)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD5)
                            }
                        }

                        Device (SS02)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC3)
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD6)
                            }
                        }

                        Device (SS03)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }
                        }

                        Device (SS04)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPCN)
                            }
                        }
                    }
                }
            }

            Device (GP18)
            {
                Name (_ADR, 0x00080002)  // _ADR: Address
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x22
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x23
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x20
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x21
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKD, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKB, 
                                0x00
                            }
                        })
                    }
                }

                Device (SATA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }

                Device (SAT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                }
            }

            Scope (\_SB)
            {
                Device (WMIW)
                {
                    Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
                    Name (_UID, "WWMI")  // _UID: Unique ID
                    Name (_WDG, Buffer (0x28)
                    {
                        /* 0000 */  0x17, 0x82, 0x35, 0x11, 0xCF, 0x21, 0xFD, 0x4B,
                        /* 0008 */  0xA8, 0xDC, 0xAB, 0xEB, 0x94, 0x80, 0x9A, 0x6E,
                        /* 0010 */  0x42, 0x43, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,
                        /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                        /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x46, 0x45, 0x01, 0x00 
                    })
                    Method (WMBC, 3, NotSerialized)
                    {
                        ^^PCI0.GPP5.L850._RST ()
                        Return (0x00)
                    }

                    Name (WQFE, Buffer (0x02C8)
                    {
                        /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                        /* 0008 */  0xB8, 0x02, 0x00, 0x00, 0x20, 0x06, 0x00, 0x00,
                        /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                        /* 0018 */  0x18, 0xDB, 0x82, 0x00, 0x01, 0x06, 0x18, 0x42,
                        /* 0020 */  0x20, 0xC2, 0x02, 0x89, 0xC0, 0x61, 0x68, 0x24,
                        /* 0028 */  0xD4, 0x01, 0x0C, 0x46, 0x03, 0x88, 0xE4, 0x40,
                        /* 0030 */  0xC8, 0x05, 0x13, 0x13, 0x20, 0x02, 0x42, 0x5E,
                        /* 0038 */  0x05, 0xD8, 0x14, 0x60, 0x12, 0x44, 0xFD, 0xFB,
                        /* 0040 */  0x43, 0x94, 0x04, 0x87, 0x12, 0x02, 0x21, 0x89,
                        /* 0048 */  0x02, 0xCC, 0x0B, 0xD0, 0x2D, 0xC0, 0xB0, 0x00,
                        /* 0050 */  0xDB, 0x02, 0x4C, 0x0B, 0x70, 0x0C, 0x49, 0xA5,
                        /* 0058 */  0x81, 0x53, 0x02, 0x4B, 0x81, 0x90, 0x50, 0x01,
                        /* 0060 */  0xCA, 0x05, 0xF8, 0x16, 0xA0, 0x1D, 0x51, 0x92,
                        /* 0068 */  0x05, 0x58, 0x86, 0x11, 0x81, 0x47, 0x11, 0xD9,
                        /* 0070 */  0x68, 0x1C, 0x1A, 0x3B, 0x0C, 0xCB, 0x04, 0xD3,
                        /* 0078 */  0x20, 0x0E, 0xA3, 0x6C, 0x64, 0x11, 0x78, 0x42,
                        /* 0080 */  0x9D, 0x0A, 0x90, 0x2B, 0x40, 0x98, 0x00, 0xF1,
                        /* 0088 */  0xA8, 0xC2, 0x68, 0x0E, 0x8A, 0xC8, 0x87, 0x46,
                        /* 0090 */  0x89, 0x19, 0x13, 0x81, 0xED, 0x1C, 0x5B, 0xA3,
                        /* 0098 */  0x38, 0x8D, 0xC2, 0x05, 0x48, 0xC7, 0xD0, 0x08,
                        /* 00A0 */  0x8E, 0x2B, 0x41, 0x87, 0x33, 0xD0, 0x14, 0xA2,
                        /* 00A8 */  0x45, 0x28, 0x48, 0x80, 0x75, 0x0C, 0x61, 0x1E,
                        /* 00B0 */  0x52, 0x94, 0x80, 0xF1, 0x62, 0x84, 0x88, 0x7A,
                        /* 00B8 */  0x54, 0x06, 0x0C, 0x14, 0x24, 0xD0, 0x59, 0xC5,
                        /* 00C0 */  0x88, 0x52, 0x34, 0x98, 0x20, 0x03, 0x7B, 0x02,
                        /* 00C8 */  0xC6, 0x88, 0x17, 0xA2, 0xD5, 0x51, 0x11, 0x9C,
                        /* 00D0 */  0x9E, 0x07, 0x43, 0x26, 0x71, 0x3C, 0x18, 0x19,
                        /* 00D8 */  0x10, 0xC2, 0x3A, 0x8D, 0x03, 0x35, 0x81, 0xDD,
                        /* 00E0 */  0x0B, 0x30, 0x86, 0x20, 0x67, 0x02, 0xAC, 0x09,
                        /* 00E8 */  0x10, 0x27, 0x40, 0x19, 0x8A, 0xBC, 0x09, 0xB0,
                        /* 00F0 */  0x05, 0x42, 0x86, 0x54, 0x23, 0x8A, 0x06, 0x58,
                        /* 00F8 */  0x21, 0x88, 0xC6, 0x16, 0xA5, 0x41, 0x40, 0x81,
                        /* 0100 */  0xC4, 0x8A, 0x62, 0xA8, 0x16, 0x21, 0x34, 0xCC,
                        /* 0108 */  0x78, 0xA1, 0x0E, 0xD4, 0x48, 0xB5, 0x21, 0xC9,
                        /* 0110 */  0xFE, 0x20, 0x48, 0xB8, 0x63, 0x81, 0x24, 0x80,
                        /* 0118 */  0x28, 0xD2, 0x68, 0x50, 0x47, 0x81, 0x04, 0x8F,
                        /* 0120 */  0x06, 0x3E, 0x16, 0x9C, 0xD4, 0xA1, 0x9D, 0xDC,
                        /* 0128 */  0x89, 0x05, 0x39, 0xDD, 0xE3, 0xAB, 0xF3, 0x4C,
                        /* 0130 */  0x40, 0x46, 0xCF, 0xB0, 0x12, 0xFC, 0x26, 0xF8,
                        /* 0138 */  0xFF, 0x7F, 0x48, 0xC0, 0xBB, 0x06, 0xD4, 0xED,
                        /* 0140 */  0xE0, 0xD9, 0x80, 0x0D, 0x33, 0x1C, 0x66, 0x88,
                        /* 0148 */  0x9E, 0x72, 0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8,
                        /* 0150 */  0x31, 0x3D, 0x16, 0x60, 0xE7, 0x76, 0x32, 0xCF,
                        /* 0158 */  0x04, 0xA5, 0x0A, 0x30, 0x7B, 0x3E, 0xD0, 0xC0,
                        /* 0160 */  0x12, 0x1C, 0x8F, 0x0F, 0x03, 0x1E, 0x36, 0x3F,
                        /* 0168 */  0x15, 0x78, 0x10, 0x7C, 0x64, 0x86, 0xF6, 0x18,
                        /* 0170 */  0x4F, 0xEB, 0x9D, 0xC0, 0x47, 0x85, 0xC3, 0x62,
                        /* 0178 */  0x62, 0x21, 0xA4, 0x00, 0x42, 0xE3, 0x01, 0xBF,
                        /* 0180 */  0xE2, 0x43, 0x81, 0x10, 0x5E, 0x1C, 0x3C, 0x5F,
                        /* 0188 */  0x13, 0x14, 0x09, 0x8C, 0x1E, 0x90, 0xFD, 0x0A,
                        /* 0190 */  0x40, 0x08, 0xFE, 0x7A, 0x70, 0x44, 0x0F, 0x10,
                        /* 0198 */  0x11, 0x1E, 0x23, 0xAC, 0x79, 0x4E, 0xBA, 0x4F,
                        /* 01A0 */  0xF4, 0x0E, 0x4D, 0x94, 0xC2, 0x0B, 0xE7, 0x85,
                        /* 01A8 */  0xC2, 0x27, 0x06, 0x8F, 0x3A, 0xD8, 0x7B, 0x85,
                        /* 01B0 */  0x87, 0x80, 0x3B, 0x46, 0x78, 0x08, 0xFC, 0x1C,
                        /* 01B8 */  0x70, 0x06, 0x07, 0x74, 0x3A, 0x87, 0x70, 0x40,
                        /* 01C0 */  0x51, 0xCE, 0xE2, 0x88, 0x7C, 0xC0, 0x30, 0xC2,
                        /* 01C8 */  0x79, 0x3E, 0x57, 0x3C, 0x67, 0x78, 0x1C, 0x67,
                        /* 01D0 */  0xF1, 0xC8, 0x70, 0x52, 0xAF, 0x03, 0x3E, 0x10,
                        /* 01D8 */  0x68, 0xA5, 0x3A, 0x8B, 0x58, 0x36, 0x88, 0x6C,
                        /* 01E0 */  0xAC, 0xD5, 0x04, 0x92, 0x05, 0x66, 0x2A, 0x0D,
                        /* 01E8 */  0x09, 0x0C, 0x50, 0xCF, 0x01, 0x26, 0xB0, 0x48,
                        /* 01F0 */  0x60, 0x1D, 0x4F, 0xB8, 0x3C, 0x0A, 0x89, 0x83,
                        /* 01F8 */  0xD0, 0xA8, 0x0C, 0x67, 0x39, 0x70, 0x14, 0xC4,
                        /* 0200 */  0xA7, 0x00, 0x47, 0x85, 0x90, 0x93, 0x03, 0x01,
                        /* 0208 */  0xFA, 0xFF, 0x7F, 0x92, 0x78, 0xCF, 0x30, 0xC4,
                        /* 0210 */  0xB3, 0x83, 0x09, 0x1C, 0x0C, 0x42, 0x87, 0x08,
                        /* 0218 */  0x1F, 0x1B, 0xF0, 0x37, 0x04, 0x9F, 0x07, 0xB8,
                        /* 0220 */  0xC0, 0x73, 0x08, 0x68, 0x6E, 0x1D, 0xE7, 0xFA,
                        /* 0228 */  0xD6, 0xC1, 0x16, 0x7A, 0x28, 0x7C, 0x58, 0xE4,
                        /* 0230 */  0x3C, 0x41, 0xC7, 0xC1, 0xC7, 0x13, 0x2F, 0x01,
                        /* 0238 */  0x3F, 0x26, 0xC0, 0xBF, 0x82, 0x78, 0x12, 0xA7,
                        /* 0240 */  0xF0, 0x02, 0xF2, 0xF6, 0x91, 0xC0, 0x63, 0xC2,
                        /* 0248 */  0x1D, 0x13, 0xE0, 0x01, 0xF9, 0x56, 0xE0, 0xD9,
                        /* 0250 */  0x3F, 0x19, 0xB0, 0x39, 0x84, 0x08, 0x13, 0xCD,
                        /* 0258 */  0xF0, 0x98, 0xC8, 0x10, 0xFA, 0xED, 0xF8, 0x44,
                        /* 0260 */  0xE0, 0x71, 0xF1, 0x71, 0xFA, 0x4C, 0xC3, 0xB0,
                        /* 0268 */  0x5F, 0x57, 0x30, 0x83, 0x7A, 0xA3, 0xF0, 0x31,
                        /* 0270 */  0xC0, 0xB0, 0x1E, 0x39, 0x87, 0x35, 0x5A, 0xD8,
                        /* 0278 */  0x03, 0x7E, 0x9A, 0xF0, 0x4D, 0xC4, 0x33, 0xF3,
                        /* 0280 */  0x1D, 0xC6, 0x67, 0x10, 0xB0, 0x00, 0xE2, 0xCF,
                        /* 0288 */  0x0B, 0xEF, 0x00, 0x9E, 0x80, 0x01, 0xD9, 0xC4,
                        /* 0290 */  0x7D, 0x1A, 0x00, 0xC7, 0xE0, 0x22, 0x9C, 0xE9,
                        /* 0298 */  0x3B, 0xC5, 0x41, 0x3C, 0x3E, 0xE0, 0x09, 0x2A,
                        /* 02A0 */  0xB4, 0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65,
                        /* 02A8 */  0x6A, 0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6,
                        /* 02B0 */  0x8C, 0x1D, 0x15, 0xFC, 0xFF, 0x97, 0xF7, 0x6C,
                        /* 02B8 */  0xD0, 0x60, 0x1D, 0x0E, 0x84, 0x4A, 0xA7, 0x92,
                        /* 02C0 */  0x11, 0x10, 0x05, 0x01, 0x11, 0x90, 0xFF, 0xFF 
                    })
                }
            }

            Device (SMB)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (SBRV, PCI_Config, 0x08, 0x0100)
                Field (SBRV, AnyAcc, NoLock, Preserve)
                {
                    RVID,   8, 
                    Offset (0x5A), 
                    I1F,    1, 
                    I12F,   1, 
                    Offset (0x7A), 
                        ,   2, 
                    G31O,   1, 
                    Offset (0xD9), 
                        ,   6, 
                    ACIR,   1
                }

                OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
                Field (PMIO, ByteAcc, NoLock, Preserve)
                {
                    INPM,   8, 
                    DAPM,   8
                }

                IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
                {
                        ,   6, 
                    HPEN,   1, 
                    Offset (0x60), 
                    P1EB,   16, 
                    Offset (0xF0), 
                        ,   3, 
                    RSTU,   1
                }

                OperationRegion (ERMG, SystemMemory, 0xFED81500, 0x03FF)
                Field (ERMG, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x0B), 
                        ,   4, 
                    P2IS,   1, 
                    P2WS,   1, 
                    Offset (0x18), 
                    Offset (0x1A), 
                    GE10,   1, 
                    Offset (0x1C), 
                    Offset (0x1E), 
                    GE11,   1, 
                    Offset (0x40), 
                    Offset (0x42), 
                    GE12,   1, 
                    Offset (0x46), 
                    GS17,   1, 
                        ,   5, 
                    GV17,   1, 
                    GE17,   1, 
                    Offset (0x108), 
                    Offset (0x10A), 
                    P33I,   1, 
                    Offset (0x10C), 
                    Offset (0x10E), 
                    P37I,   1, 
                    Offset (0x110), 
                        ,   22, 
                    PLEN,   1, 
                    Offset (0x118), 
                    Offset (0x11A), 
                    P3BI,   1, 
                    Offset (0x11C), 
                    Offset (0x11E), 
                    P40I,   1, 
                    Offset (0x24C), 
                    Offset (0x24E), 
                    BOID,   1
                }

                OperationRegion (ERMM, SystemMemory, 0xFED80000, 0x1000)
                Field (ERMM, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x200), 
                        ,   1, 
                    E01S,   1, 
                        ,   3, 
                    E05S,   1, 
                        ,   9, 
                    E15S,   1, 
                    E16S,   1, 
                        ,   5, 
                    E22S,   1, 
                    Offset (0x204), 
                        ,   1, 
                    E01E,   1, 
                        ,   3, 
                    E05E,   1, 
                        ,   9, 
                    E15E,   1, 
                    E16E,   1, 
                        ,   5, 
                    E22E,   1, 
                    Offset (0x208), 
                        ,   1, 
                    E01C,   1, 
                        ,   3, 
                    E05C,   1, 
                        ,   4, 
                    E10C,   1, 
                        ,   4, 
                    E15C,   1, 
                    E16C,   1, 
                        ,   4, 
                    E21C,   1, 
                    E22C,   1, 
                        ,   3, 
                    E26C,   1, 
                    Offset (0x20C), 
                        ,   1, 
                    E01L,   1, 
                        ,   3, 
                    E05L,   1, 
                        ,   9, 
                    E15L,   1, 
                    E16L,   1, 
                        ,   5, 
                    E22L,   1, 
                    Offset (0x288), 
                        ,   1, 
                    CLPS,   1, 
                    Offset (0x299), 
                        ,   7, 
                    G15A,   1, 
                    Offset (0x2AC), 
                        ,   6, 
                    SRBT,   2, 
                    Offset (0x2B0), 
                        ,   2, 
                    SLPS,   2, 
                    Offset (0x2B2), 
                        ,   4, 
                    SPBT,   2, 
                    Offset (0x362), 
                        ,   6, 
                    MT3A,   1, 
                    Offset (0x377), 
                    EPNM,   1, 
                    DPPF,   1, 
                    Offset (0x3BB), 
                        ,   6, 
                    PWDE,   1, 
                    Offset (0x3BE), 
                        ,   5, 
                    ALLS,   1, 
                    Offset (0x3C8), 
                        ,   2, 
                    TFTE,   1, 
                    Offset (0x3DF), 
                    BLNK,   2, 
                    Offset (0x3F0), 
                    PHYD,   1, 
                        ,   1, 
                        ,   1, 
                    US5R,   1, 
                    Offset (0x400), 
                    F0CT,   8, 
                    F0MS,   8, 
                    F0FQ,   8, 
                    F0LD,   8, 
                    F0MD,   8, 
                    F0MP,   8, 
                    LT0L,   8, 
                    LT0H,   8, 
                    MT0L,   8, 
                    MT0H,   8, 
                    HT0L,   8, 
                    HT0H,   8, 
                    LRG0,   8, 
                    LHC0,   8, 
                    Offset (0x410), 
                    F1CT,   8, 
                    F1MS,   8, 
                    F1FQ,   8, 
                    F1LD,   8, 
                    F1MD,   8, 
                    F1MP,   8, 
                    LT1L,   8, 
                    LT1H,   8, 
                    MT1L,   8, 
                    MT1H,   8, 
                    HT1L,   8, 
                    HT1H,   8, 
                    LRG1,   8, 
                    LHC1,   8, 
                    Offset (0x420), 
                    F2CT,   8, 
                    F2MS,   8, 
                    F2FQ,   8, 
                    F2LD,   8, 
                    F2MD,   8, 
                    F2MP,   8, 
                    LT2L,   8, 
                    LT2H,   8, 
                    MT2L,   8, 
                    MT2H,   8, 
                    HT2L,   8, 
                    HT2H,   8, 
                    LRG2,   8, 
                    LHC2,   8, 
                    Offset (0x430), 
                    F3CT,   8, 
                    F3MS,   8, 
                    F3FQ,   8, 
                    F3LD,   8, 
                    F3MD,   8, 
                    F3MP,   8, 
                    LT3L,   8, 
                    LT3H,   8, 
                    MT3L,   8, 
                    MT3H,   8, 
                    HT3L,   8, 
                    HT3H,   8, 
                    LRG3,   8, 
                    LHC3,   8, 
                    Offset (0x700), 
                    SEC,    8, 
                    Offset (0x702), 
                    MIN,    8, 
                    Offset (0xD01), 
                    MX01,   8, 
                    Offset (0xD07), 
                    MX07,   8, 
                    Offset (0xD0E), 
                    MX14,   8, 
                    MX15,   8, 
                    MX16,   8, 
                    Offset (0xD15), 
                    MX21,   8, 
                    MX22,   8, 
                    MX23,   8, 
                    Offset (0xD1B), 
                    MX27,   8, 
                    MX28,   8, 
                    Offset (0xD20), 
                    MX32,   8, 
                    MX33,   8, 
                    MX34,   8, 
                    Offset (0xD29), 
                    MX41,   8, 
                    Offset (0xD2C), 
                    MX44,   8, 
                    Offset (0xD33), 
                    MX51,   8, 
                    Offset (0xD35), 
                    MX53,   8, 
                    Offset (0xD39), 
                    MX57,   8, 
                    MX58,   8, 
                    MX59,   8, 
                    Offset (0xD42), 
                    MX66,   8, 
                    Offset (0xD66), 
                    M102,   8, 
                    Offset (0xD6C), 
                    M108,   8, 
                    Offset (0xDAA), 
                    M170,   8, 
                    Offset (0xDAF), 
                    M175,   8, 
                    M176,   8, 
                    Offset (0xDB4), 
                    M180,   8, 
                    M181,   8, 
                    M182,   8, 
                    Offset (0xDC5), 
                    M197,   8, 
                    Offset (0xDC7), 
                    M199,   8, 
                    M200,   8, 
                    Offset (0xE00), 
                    MS00,   8, 
                    MS01,   8, 
                    MS02,   8, 
                    MS03,   8, 
                    MS04,   8, 
                    Offset (0xE40), 
                    MS40,   8, 
                    Offset (0xE81), 
                        ,   2, 
                    ECES,   1
                }

                OperationRegion (P1E0, SystemIO, P1EB, 0x04)
                Field (P1E0, ByteAcc, NoLock, Preserve)
                {
                        ,   14, 
                    PEWS,   1, 
                    WSTA,   1, 
                        ,   14, 
                    PEWD,   1
                }

                Method (TRMD, 0, NotSerialized)
                {
                    Store (Zero, TFTE)
                }

                Method (HTCD, 0, NotSerialized)
                {
                }

                OperationRegion (ABIO, SystemIO, 0x0CD8, 0x08)
                Field (ABIO, DWordAcc, NoLock, Preserve)
                {
                    INAB,   32, 
                    DAAB,   32
                }

                Method (RDAB, 1, NotSerialized)
                {
                    Store (Arg0, INAB)
                    Return (DAAB)
                }

                Method (WTAB, 2, NotSerialized)
                {
                    Store (Arg0, INAB)
                    Store (Arg1, DAAB)
                }

                Method (RWAB, 3, NotSerialized)
                {
                    And (RDAB (Arg0), Arg1, Local0)
                    Or (Local0, Arg2, Local1)
                    WTAB (Arg0, Local1)
                }

                Method (CABR, 3, NotSerialized)
                {
                    ShiftLeft (Arg0, 0x05, Local0)
                    Add (Local0, Arg1, Local1)
                    ShiftLeft (Local1, 0x18, Local2)
                    Add (Local2, Arg2, Local3)
                    Return (Local3)
                }
            }

            Device (LPC0)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
                Field (PIRQ, ByteAcc, NoLock, Preserve)
                {
                    PIID,   8, 
                    PIDA,   8
                }

                IndexField (PIID, PIDA, ByteAcc, NoLock, Preserve)
                {
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x0C), 
                    SIRA,   8, 
                    SIRB,   8, 
                    SIRC,   8, 
                    SIRD,   8, 
                    PIRS,   8, 
                    Offset (0x13), 
                    HDAD,   8, 
                    Offset (0x17), 
                    SDCL,   8, 
                    Offset (0x1A), 
                    SDIO,   8, 
                    Offset (0x30), 
                    USB1,   8, 
                    Offset (0x34), 
                    USB3,   8, 
                    Offset (0x41), 
                    SATA,   8, 
                    Offset (0x62), 
                    GIOC,   8, 
                    Offset (0x70), 
                    I2C0,   8, 
                    I2C1,   8, 
                    I2C2,   8, 
                    I2C3,   8, 
                    URT0,   8, 
                    URT1,   8
                }

                Name (IPRS, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {3,4,5,7,10,11,12,14,15}
                })
                Name (UPRS, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Exclusive, )
                        {3,4,5,7}
                })
                OperationRegion (KBDD, SystemIO, 0x64, 0x01)
                Field (KBDD, ByteAcc, NoLock, Preserve)
                {
                    PD64,   8
                }

                Method (DSPI, 0, NotSerialized)
                {
                    INTA (0x1F)
                    INTB (0x1F)
                    INTC (0x1F)
                    INTD (0x1F)
                    Store (PD64, Local1)
                    Store (0x1F, PIRE)
                    Store (0x1F, PIRF)
                    Store (0x1F, PIRG)
                    Store (0x1F, PIRH)
                }

                Method (INTA, 1, NotSerialized)
                {
                    Store (Arg0, PIRA)
                    If (GPIC)
                    {
                        Store (Arg0, HDAD)
                        Store (Arg0, SDCL)
                    }
                }

                Method (INTB, 1, NotSerialized)
                {
                    Store (Arg0, PIRB)
                }

                Method (INTC, 1, NotSerialized)
                {
                    Store (Arg0, PIRC)
                    If (GPIC)
                    {
                        Store (Arg0, USB1)
                        Store (Arg0, USB3)
                    }
                }

                Method (INTD, 1, NotSerialized)
                {
                    Store (Arg0, PIRD)
                    If (GPIC)
                    {
                        Store (Arg0, SATA)
                    }
                }

                Device (LNKA)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x01)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRA)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTA (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRA, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        INTA (Local0)
                    }
                }

                Device (LNKB)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRB)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTB (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRB, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        INTB (Local0)
                    }
                }

                Device (LNKC)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRC)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTC (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRC, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        INTC (Local0)
                    }
                }

                Device (LNKD)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRD)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTD (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRD, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        INTD (Local0)
                    }
                }

                Device (LNKE)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRE)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        Store (0x1F, PIRE)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRE, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PIRE)
                    }
                }

                Device (LNKF)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRF)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        Store (0x1F, PIRF)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRF, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PIRF)
                    }
                }

                Device (LNKG)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRG)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        Store (0x1F, PIRG)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRG, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PIRG)
                    }
                }

                Device (LNKH)
                {
                    Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                    Name (_UID, 0x08)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRH)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS)
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        Store (0x1F, PIRH)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (IPRS, Local0)
                        CreateWordField (Local0, 0x01, IRQ0)
                        ShiftLeft (0x01, PIRH, IRQ0)
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PIRH)
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (LEqual (^^^SMB.HPEN, One))
                        {
                            Return (BUF0)
                        }

                        Return (BUF1)
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (TIME)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {0}
                    })
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0530,             // Range Minimum
                            0x0530,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0430,             // Range Minimum
                            0x0430,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0440,             // Range Minimum
                            0x0440,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0B00,             // Range Minimum
                            0x0B00,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0B20,             // Range Minimum
                            0x0B20,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD2,             // Range Minimum
                            0x0CD2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD4,             // Range Minimum
                            0x0CD4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD6,             // Range Minimum
                            0x0CD6,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD8,             // Range Minimum
                            0x0CD8,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0CF9,             // Range Minimum
                            0x0CF9,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                            0x0000,             // Granularity
                            0x8100,             // Range Minimum
                            0x81FF,             // Range Maximum
                            0x0000,             // Translation Offset
                            0x0100,             // Length
                            ,, , TypeStatic, DenseTranslation)
                        WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                            0x0000,             // Granularity
                            0x8200,             // Range Minimum
                            0x82FF,             // Range Maximum
                            0x0000,             // Translation Offset
                            0x0100,             // Length
                            ,, , TypeStatic, DenseTranslation)
                    })
                }

                OperationRegion (LPCS, PCI_Config, 0xA0, 0x04)
                Field (LPCS, DWordAcc, NoLock, Preserve)
                {
                    SPBA,   32
                }

                Device (MEM)
                {
                    Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                    Name (MSRC, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y06)
                        Memory32Fixed (ReadWrite,
                            0xFEC10000,         // Address Base
                            0x00000020,         // Address Length
                            _Y07)
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED61000,         // Address Base
                            0x00000400,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED80000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y06._BAS, BARX)  // _BAS: Base Address
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y06._LEN, GALN)  // _LEN: Length
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y07._BAS, MB01)  // _BAS: Base Address
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y07._LEN, ML01)  // _LEN: Length
                        Store (SPBA, Local0)
                        And (Local0, 0xFFFFFFE0, MB01)
                        Store (NBBA, Local0)
                        If (Local0)
                        {
                            Store (0x1000, GALN)
                            And (Local0, 0xFFFFFFF0, BARX)
                        }

                        Return (MSRC)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }
                }

                Device (KBD)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (WIN8)
                        {
                            Return (0x7100AE30)
                        }

                        Return (0x0303D041)
                    }

                    Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                }

                Device (MOU)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Return (0x6420AE30)
                    }

                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (_GPE, 0x03)  // _GPE: General Purpose Events
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, H8DR)
                        }

                        If (H8DR)
                        {
                            Store (0x01, ACOS)
                        }
                        Else
                        {
                            MBEC (0x02BF, 0xFF, 0x01)
                        }

                        If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, 0x01)))
                        {
                            Store (0x00, Local0)
                            If (LEqual (TPOS, 0x40))
                            {
                                Store (0x01, Local0)
                            }

                            If (LEqual (TPOS, 0x80))
                            {
                                Store (0x02, Local0)
                            }

                            If (LEqual (TPOS, 0x50))
                            {
                                Store (0x03, Local0)
                            }

                            If (LEqual (TPOS, 0x60))
                            {
                                Store (0x04, Local0)
                            }

                            If (LEqual (TPOS, 0x61))
                            {
                                Store (0x04, Local0)
                            }

                            If (LEqual (TPOS, 0x70))
                            {
                                Store (0x05, Local0)
                            }

                            If (H8DR)
                            {
                                Store (Local0, OTYE)
                            }
                            Else
                            {
                                MBEC (0x03D7, 0xFF, Local0)
                            }
                        }
                    }

                    Mutex (UCCI, 0x00)
                    OperationRegion (ECOC, EmbeddedControl, 0x00, 0x0100)
                    Field (ECOC, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        HLCL,   8, 
                        Offset (0x46), 
                            ,   1, 
                        BTWK,   1, 
                        HPLD,   1, 
                            ,   1, 
                        HPAC,   1, 
                        BTST,   1, 
                        PSST,   1, 
                        Offset (0x47), 
                        Offset (0x50), 
                        HMPR,   8, 
                        Offset (0x81), 
                        HIID,   8
                    }

                    OperationRegion (ECOR, SystemMemory, 0xFE00DA00, 0xFF)
                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        HDBM,   1, 
                            ,   1, 
                            ,   1, 
                        HFNE,   1, 
                            ,   1, 
                            ,   1, 
                        HLDM,   1, 
                        Offset (0x01), 
                        BBLS,   1, 
                        BTCM,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        HBPR,   1, 
                        BTPC,   1, 
                        Offset (0x02), 
                        HDUE,   1, 
                            ,   4, 
                        SNLK,   1, 
                        Offset (0x03), 
                            ,   5, 
                        HAUM,   2, 
                        Offset (0x05), 
                        HSPA,   1, 
                        Offset (0x06), 
                        HSUN,   8, 
                        HSRP,   8, 
                        Offset (0x0A), 
                            ,   7, 
                        ECMS,   1, 
                        Offset (0x0C), 
                        Offset (0x0D), 
                            ,   4, 
                        CALM,   1, 
                            ,   1, 
                        KBLL,   1, 
                        KBLH,   1, 
                        HFNS,   2, 
                        Offset (0x0F), 
                            ,   6, 
                        NULS,   1, 
                        Offset (0x10), 
                        HAM0,   8, 
                        HAM1,   8, 
                        HAM2,   8, 
                        HAM3,   8, 
                        HAM4,   8, 
                        HAM5,   8, 
                        HAM6,   8, 
                        HAM7,   8, 
                        HAM8,   8, 
                        HAM9,   8, 
                        HAMA,   8, 
                        HAMB,   8, 
                        HAMC,   8, 
                        HAMD,   8, 
                        HAME,   8, 
                        HAMF,   8, 
                        Offset (0x23), 
                        HANT,   8, 
                        Offset (0x26), 
                            ,   2, 
                        HANA,   2, 
                        Offset (0x27), 
                        Offset (0x28), 
                            ,   1, 
                        SKEM,   1, 
                        Offset (0x29), 
                        Offset (0x2A), 
                        HATR,   8, 
                        HT0H,   8, 
                        HT0L,   8, 
                        HT1H,   8, 
                        HT1L,   8, 
                        HFSP,   8, 
                            ,   6, 
                        HMUT,   1, 
                        Offset (0x31), 
                            ,   2, 
                        HUWB,   1, 
                            ,   3, 
                        VPON,   1, 
                        VRST,   1, 
                        HWPM,   1, 
                        HWLB,   1, 
                        HWLO,   1, 
                        HWDK,   1, 
                        HWFN,   1, 
                        HWBT,   1, 
                        HWRI,   1, 
                        HWBU,   1, 
                        HWLU,   1, 
                        Offset (0x34), 
                            ,   3, 
                        PIBS,   1, 
                        FEXI,   1, 
                            ,   2, 
                        HPLO,   1, 
                            ,   4, 
                        FANE,   1, 
                        Offset (0x36), 
                        HWAC,   16, 
                        HB0S,   7, 
                        HB0A,   1, 
                        HB1S,   7, 
                        HB1A,   1, 
                        HCMU,   1, 
                            ,   2, 
                        OVRQ,   1, 
                        DCBD,   1, 
                        DCWL,   1, 
                        DCWW,   1, 
                        HB1I,   1, 
                            ,   1, 
                        KBLT,   1, 
                        BTPW,   1, 
                        FNKC,   1, 
                        HUBS,   1, 
                        BDPW,   1, 
                        BDDT,   1, 
                        HUBB,   1, 
                        Offset (0x46), 
                        Offset (0x47), 
                        HPBU,   1, 
                            ,   1, 
                        HBID,   1, 
                            ,   3, 
                        HBCS,   1, 
                        HPNF,   1, 
                            ,   1, 
                        GSTS,   1, 
                            ,   2, 
                        HLBU,   1, 
                        DOCD,   1, 
                        HCBL,   1, 
                        Offset (0x49), 
                        SLUL,   1, 
                            ,   1, 
                        ACAT,   1, 
                            ,   4, 
                        ELNK,   1, 
                        FPSU,   1, 
                        Offset (0x4B), 
                        Offset (0x4C), 
                        HTMH,   8, 
                        HTML,   8, 
                        HWAK,   16, 
                        Offset (0x51), 
                            ,   7, 
                        HMDN,   1, 
                        Offset (0x78), 
                        TMP0,   8, 
                        TMP3,   8, 
                        Offset (0x7B), 
                        GTMP,   1, 
                        Offset (0x7F), 
                            ,   1, 
                        QCON,   1, 
                        Offset (0x80), 
                        Offset (0x81), 
                        Offset (0x82), 
                        Offset (0x83), 
                        HFNI,   8, 
                        HSPD,   16, 
                        Offset (0x88), 
                        TSL0,   7, 
                        TSR0,   1, 
                        TSL1,   7, 
                        TSR1,   1, 
                        TSL2,   7, 
                        TSR2,   1, 
                        TSL3,   7, 
                        TSR3,   1, 
                        GPUT,   1, 
                        Offset (0x8D), 
                        HDAA,   3, 
                        HDAB,   3, 
                        HDAC,   2, 
                        Offset (0xB0), 
                        HDEN,   32, 
                        HDEP,   32, 
                        HDEM,   8, 
                        HDES,   8, 
                        Offset (0xC8), 
                        ATMX,   8, 
                        HWAT,   8, 
                        Offset (0xCC), 
                        PWMH,   8, 
                        PWML,   8, 
                        Offset (0xED), 
                            ,   4, 
                        HDDD,   1
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (H8DR)
                        {
                            Store (0x00, HSPA)
                        }
                        Else
                        {
                            MBEC (0x05, 0xFE, 0x00)
                        }

                        ^HKEY.WGIN ()
                        If (H8DR)
                        {
                            If (LEqual (WLAC, 0x02)){}
                            ElseIf (LAnd (ELNK, LEqual (WLAC, 0x01)))
                            {
                                Store (0x00, DCWL)
                            }
                            Else
                            {
                                Store (0x01, DCWL)
                            }
                        }
                        Else
                        {
                            MBEC (0x3A, 0xFF, 0x20)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (LED, 2, NotSerialized)
                    {
                        Or (Arg0, Arg1, Local0)
                        If (H8DR)
                        {
                            Store (Local0, HLCL)
                        }
                        Else
                        {
                            WBEC (0x0C, Local0)
                        }
                    }

                    Name (BAON, 0x00)
                    Name (WBON, 0x00)
                    Method (BEEP, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x05))
                        {
                            Store (0x00, WBON)
                        }

                        Store (WBON, Local2)
                        If (BAON)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                Store (0x00, BAON)
                                If (WBON)
                                {
                                    Store (0x03, Local0)
                                    Store (0x08, Local1)
                                }
                                Else
                                {
                                    Store (0x00, Local0)
                                    Store (0x00, Local1)
                                }
                            }
                            Else
                            {
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                                If (LEqual (Arg0, 0x11))
                                {
                                    Store (0x00, WBON)
                                }

                                If (LEqual (Arg0, 0x10))
                                {
                                    Store (0x01, WBON)
                                }
                            }
                        }
                        Else
                        {
                            Store (Arg0, Local0)
                            Store (0xFF, Local1)
                            If (LEqual (Arg0, 0x0F))
                            {
                                Store (Arg0, Local0)
                                Store (0x08, Local1)
                                Store (0x01, BAON)
                            }

                            If (LEqual (Arg0, 0x11))
                            {
                                Store (0x00, Local0)
                                Store (0x00, Local1)
                                Store (0x00, WBON)
                            }

                            If (LEqual (Arg0, 0x10))
                            {
                                Store (0x03, Local0)
                                Store (0x08, Local1)
                                Store (0x01, WBON)
                            }
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (0x00, WBON)
                            If (Local2)
                            {
                                Store (0x07, Local0)
                                If (LOr (LEqual (SPS, 0x03), LEqual (SPS, 0x04)))
                                {
                                    Store (0x00, Local2)
                                    Store (0xFF, Local0)
                                    Store (0xFF, Local1)
                                }
                            }
                        }

                        If (LEqual (Arg0, 0x07))
                        {
                            If (Local2)
                            {
                                Store (0x00, Local2)
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                            }
                        }

                        If (H8DR)
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                Store (0x00, HSRP)
                                Store (0x00, HSUN)
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                Store (Local1, HSRP)
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                Store (Local0, HSUN)
                            }
                        }
                        Else
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                WBEC (0x07, 0x00)
                                WBEC (0x06, 0x00)
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                WBEC (0x07, Local1)
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                WBEC (0x06, Local0)
                            }
                        }

                        If (LEqual (Arg0, 0x03)){}
                        If (LEqual (Arg0, 0x07))
                        {
                            Sleep (0x01F4)
                        }
                    }

                    Method (EVNT, 1, NotSerialized)
                    {
                        If (H8DR)
                        {
                            If (Arg0)
                            {
                                Or (HAM5, 0x04, HAM5)
                            }
                            Else
                            {
                                And (HAM5, 0xFB, HAM5)
                            }
                        }
                        ElseIf (Arg0)
                        {
                            MBEC (0x15, 0xFF, 0x04)
                        }
                        Else
                        {
                            MBEC (0x15, 0xFB, 0x00)
                        }
                    }

                    Method (CHKS, 0, NotSerialized)
                    {
                        Store (0x03E8, Local0)
                        While (HMPR)
                        {
                            Sleep (0x01)
                            Decrement (Local0)
                            If (LNot (Local0))
                            {
                                Return (0x8080)
                            }
                        }

                        If (HMDN)
                        {
                            Return (Zero)
                        }

                        Return (0x8081)
                    }

                    Method (LPMD, 0, NotSerialized)
                    {
                        Store (0x00, Local0)
                        Store (0x00, Local1)
                        Store (0x00, Local2)
                        Return (Local0)
                    }

                    Method (CLPM, 0, NotSerialized)
                    {
                    }

                    Mutex (MCPU, 0x00)
                    Mutex (LIDQ, 0x00)
                    Method (_Q1F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x01, 0x00020000))
                        {
                            If (And (PKLI, 0x0C00))
                            {
                                ^HKEY.MHKQ (0x1012)
                            }
                        }

                        SCMS (0x0E)
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x01, 0x40))
                        {
                            ^HKEY.MHKQ (0x1007)
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x01, 0x01000000))
                        {
                            ^HKEY.MHKQ (0x1019)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x01, 0x02000000))
                        {
                            ^HKEY.MHKQ (0x101A)
                        }
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.DHKC)
                        {
                            ^HKEY.MHKQ (0x1004)
                        }
                        Else
                        {
                            Notify (SLPB, 0x80)
                        }
                    }

                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x01, 0x00040000))
                        {
                            ^HKEY.MHKQ (0x1317)
                        }
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x01, 0x10))
                        {
                            ^HKEY.MHKQ (0x1005)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x03, 0x00080000))
                        {
                            ^HKEY.MHKQ (0x1318)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x03, 0x00100000))
                        {
                            ^HKEY.MHKQ (0x1319)
                        }
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x03, 0x00010000))
                        {
                            ^HKEY.MHKQ (0x1311)
                        }
                    }

                    Method (_Q6B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x03, 0x4000))
                        {
                            ^HKEY.TSSS ()
                        }
                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x03, 0x00020000))
                        {
                            ^HKEY.MHKQ (0x1312)
                        }
                    }

                    Method (_Q94, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (^HKEY.MHKK (0x03, 0x00040000))
                        {
                            ^HKEY.MHKQ (0x1313)
                        }
                    }

                    Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (Acquire (UCCI, 0xA000), 0x00))
                        {
                            SCMS (0x12)
                            Sleep (0x01F4)
                            Notify (AC, 0x80)
                            If (WXPF)
                            {
                                Acquire (MCPU, 0xFFFF)
                            }

                            If (WXPF)
                            {
                                Sleep (0x64)
                            }

                            If (WXPF)
                            {
                                Release (MCPU)
                            }

                            ^HKEY.MHKQ (0x6040)
                            Release (UCCI)
                        }
                    }

                    Method (ACIN, 0, NotSerialized)
                    {
                        If (LEqual (Acquire (UCCI, 0xA000), 0x00))
                        {
                            SCMS (0x12)
                            Sleep (0x01F4)
                            Notify (AC, 0x80)
                            If (WXPF)
                            {
                                Acquire (MCPU, 0xFFFF)
                            }

                            If (WXPF)
                            {
                                Sleep (0x64)
                            }

                            If (WXPF)
                            {
                                Release (MCPU)
                            }

                            ^HKEY.MHKQ (0x6040)
                            Release (UCCI)
                        }
                    }

                    Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (Acquire (UCCI, 0xA000), 0x00))
                        {
                            SCMS (0x12)
                            Sleep (0x01F4)
                            Notify (AC, 0x80)
                            If (WXPF)
                            {
                                Acquire (MCPU, 0xFFFF)
                            }

                            If (WXPF)
                            {
                                Sleep (0x64)
                            }

                            If (WXPF)
                            {
                                Release (MCPU)
                            }

                            ^HKEY.MHKQ (0x6040)
                            Release (UCCI)
                        }
                    }

                    Method (ACOU, 0, NotSerialized)
                    {
                        If (LEqual (Acquire (UCCI, 0xA000), 0x00))
                        {
                            SCMS (0x12)
                            Sleep (0x01F4)
                            Notify (AC, 0x80)
                            If (WXPF)
                            {
                                Acquire (MCPU, 0xFFFF)
                            }

                            If (WXPF)
                            {
                                Sleep (0x64)
                            }

                            If (WXPF)
                            {
                                Release (MCPU)
                            }

                            ^HKEY.MHKQ (0x6040)
                            Release (UCCI)
                        }
                    }

                    OperationRegion (QWER, SystemIO, 0x72, 0x02)
                    Field (QWER, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x8D), 
                        WERT,   8, 
                        DFGH,   8
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (Acquire (LIDQ, 0xA000), 0x00))
                        {
                            Store (0x2A, P80H)
                            Store (HPLD, WERT)
                            Store (HPLD, HAM6)
                            VCMS (0x01, ^^^^LID._LID ())
                            If (LEqual (ILNF, 0x00))
                            {
                                If (IOST)
                                {
                                    If (LNot (ISOC (0x00)))
                                    {
                                        Store (0x00, IOST)
                                        ^HKEY.MHKQ (0x60D0)
                                    }
                                }

                                ^HKEY.MHKQ (0x5002)
                                If (LEqual (PLUX, 0x00))
                                {
                                    Notify (LID, 0x80)
                                    Sleep (0x01F4)
                                }
                            }

                            Release (LIDQ)
                        }
                    }

                    Method (LIDO, 0, NotSerialized)
                    {
                        If (LEqual (Acquire (LIDQ, 0xA000), 0x00))
                        {
                            Store (0x2A, P80H)
                            Store (HPLD, WERT)
                            Store (HPLD, HAM6)
                            VCMS (0x01, ^^^^LID._LID ())
                            If (LEqual (ILNF, 0x00))
                            {
                                If (IOST)
                                {
                                    If (LNot (ISOC (0x00)))
                                    {
                                        Store (0x00, IOST)
                                        ^HKEY.MHKQ (0x60D0)
                                    }
                                }

                                ^HKEY.MHKQ (0x5002)
                                If (LEqual (PLUX, 0x00))
                                {
                                    Notify (LID, 0x80)
                                }
                            }

                            Release (LIDQ)
                        }
                    }

                    Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (Acquire (LIDQ, 0xA000), 0x00))
                        {
                            Store (0x2B, P80H)
                            Store (0x00, WERT)
                            Store (0x00, DFGH)
                            Store (0x00, HAM6)
                            SCMS (0x0D)
                            VCMS (0x01, ^^^^LID._LID ())
                            If (LEqual (ILNF, 0x00))
                            {
                                If (LAnd (IOEN, LNot (IOST)))
                                {
                                    If (LNot (ISOC (0x01)))
                                    {
                                        Store (0x01, IOST)
                                        ^HKEY.MHKQ (0x60D0)
                                    }
                                }

                                ^HKEY.MHKQ (0x5001)
                                If (LEqual (PLUX, 0x00))
                                {
                                    Notify (LID, 0x80)
                                }
                            }

                            Release (LIDQ)
                        }
                    }

                    Method (LIDC, 0, NotSerialized)
                    {
                        Store (0x2B, P80H)
                        Store (0x00, WERT)
                        Store (0x00, DFGH)
                        Store (0x00, HAM6)
                        SCMS (0x0D)
                        VCMS (0x01, ^^^^LID._LID ())
                        If (LEqual (ILNF, 0x00))
                        {
                            If (LAnd (IOEN, LNot (IOST)))
                            {
                                If (LNot (ISOC (0x01)))
                                {
                                    Store (0x01, IOST)
                                    ^HKEY.MHKQ (0x60D0)
                                }
                            }

                            ^HKEY.MHKQ (0x5001)
                            If (LEqual (PLUX, 0x00))
                            {
                                Notify (LID, 0x80)
                            }
                        }
                    }

                    Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (_Q49, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Fatal (0x01, 0x80010000, 0x2E98)
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x6012)
                    }

                    Method (_Q8A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (WLAC, 0x02)){}
                        ElseIf (LAnd (ELNK, LEqual (WLAC, 0x01)))
                        {
                            Store (0x00, DCWL)
                        }
                        Else
                        {
                            Store (0x01, DCWL)
                        }
                    }

                    Method (_Q2F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        BFCC ()
                    }

                    Method (_Q71, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        ^HKEY.MHKQ (0x1316)
                    }

                    Method (_Q86, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x86, P80H)
                        ^HKEY.DYTC (0x001F4001)
                    }

                    Method (_Q87, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x87, P80H)
                        ^HKEY.DYTC (0x000F4001)
                    }

                    Method (_Q6E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x6E, P80H)
                        If (LEqual (And (OSMH, 0x01), 0x01))
                        {
                            ^HKEY.DYTC (0x001F1001)
                        }
                        Else
                        {
                            ^HKEY.DYTC (0x000F1001)
                        }
                    }

                    Method (_Q8B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x8B, P80H)
                        Store (0x01, LGBF)
                        ^HKEY.DYTC (0x001F0001)
                    }

                    Method (_Q8C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x8C, P80H)
                        Store (0x00, LGBF)
                        ^HKEY.DYTC (0x001F0001)
                    }

                    Method (_Q95, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        WFIO (0x59, 0x01)
                    }

                    Method (_Q96, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        WFIO (0x59, 0x00)
                    }

                    OperationRegion (SMI0, SystemIO, 0xB2, 0x01)
                    Field (SMI0, ByteAcc, NoLock, Preserve)
                    {
                        APMC,   8
                    }

                    Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x6C, P80H)
                        Store (0xCC, APMC)
                    }

                    Method (_Q6D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x6D, P80H)
                        Store (0xCF, APMC)
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (HB0A)
                        {
                            Notify (BAT0, 0x80)
                        }
                    }

                    Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (BAT0, 0x81)
                    }

                    Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (BAT0, 0x80)
                    }

                    Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Notify (BAT0, 0x80)
                    }

                    Method (BFCC, 0, NotSerialized)
                    {
                        If (^BAT0.B0ST)
                        {
                            Notify (BAT0, 0x81)
                        }
                    }

                    Method (BATW, 1, NotSerialized)
                    {
                        If (BT2T){}
                    }

                    OperationRegion (ECOE, SystemMemory, 0xFE00DE00, 0xFF)
                    Field (ECOE, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x16), 
                        SBVO,   16, 
                        Offset (0x1A), 
                        SBAC,   16, 
                        SBRS,   16, 
                        SBRC,   16, 
                        Offset (0x22), 
                        SBFC,   16, 
                        Offset (0x26), 
                        SBAE,   16, 
                        SBAF,   16, 
                        SBBS,   16
                    }

                    Field (ECOE, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x12), 
                        SBBM,   16, 
                        Offset (0x2C), 
                        SBCC,   16, 
                        Offset (0x92), 
                        SBMD,   16
                    }

                    Field (ECOE, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x32), 
                        SBDC,   16, 
                        SBDV,   16, 
                        Offset (0x38), 
                        SBDT,   16, 
                        SBSN,   16, 
                        Offset (0x82), 
                        SBOM,   16
                    }

                    Field (ECOE, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x62), 
                        SBCH,   32
                    }

                    Field (ECOE, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x42), 
                        SBMN,   128
                    }

                    Field (ECOE, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x52), 
                        SBDN,   128
                    }

                    Mutex (BATM, 0x00)
                    Method (GBIF, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            Store (SBBM, Local7)
                            ShiftRight (Local7, 0x0F, Local7)
                            XOr (Local7, 0x01, Index (Arg1, 0x00))
                            If (Local7)
                            {
                                Multiply (SBFC, 0x0A, Local1)
                            }
                            Else
                            {
                                Store (SBFC, Local1)
                            }

                            Store (Local1, Index (Arg1, 0x02))
                            If (Local7)
                            {
                                Multiply (SBDC, 0x0A, Local0)
                            }
                            Else
                            {
                                Store (SBDC, Local0)
                            }

                            Store (Local0, Index (Arg1, 0x01))
                            Divide (Local1, 0x14, Local2, Index (Arg1, 0x05))
                            If (Local7)
                            {
                                Store (0xC8, Index (Arg1, 0x06))
                            }
                            ElseIf (SBDV)
                            {
                                Divide (0x00030D40, SBDV, Local2, Index (Arg1, 0x06))
                            }
                            Else
                            {
                                Store (0x00, Index (Arg1, 0x06))
                            }

                            Store (SBDV, Index (Arg1, 0x04))
                            Store (SBSN, Local0)
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Store (0x04, Local2)
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                Add (Local1, 0x30, Index (SERN, Local2))
                                Decrement (Local2)
                            }

                            Store (SERN, Index (Arg1, 0x0A))
                            Store (SBDN, Index (Arg1, 0x09))
                            Name (BTYP, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            Store (SBCH, BTYP)
                            Store (BTYP, Index (Arg1, 0x0B))
                            Store (SBMN, Index (Arg1, 0x0C))
                        }
                        Else
                        {
                            Store (0xFFFFFFFF, Index (Arg1, 0x01))
                            Store (0x00, Index (Arg1, 0x05))
                            Store (0x00, Index (Arg1, 0x06))
                            Store (0xFFFFFFFF, Index (Arg1, 0x02))
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Method (GBIX, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            Store (SBCC, Local7)
                            Store (Local7, Index (Arg1, 0x08))
                            Store (SBBM, Local7)
                            ShiftRight (Local7, 0x0F, Local7)
                            XOr (Local7, 0x01, Index (Arg1, 0x01))
                            If (Local7)
                            {
                                Multiply (SBFC, 0x0A, Local1)
                            }
                            Else
                            {
                                Store (SBFC, Local1)
                            }

                            Store (Local1, Index (Arg1, 0x03))
                            If (Local7)
                            {
                                Multiply (SBDC, 0x0A, Local0)
                            }
                            Else
                            {
                                Store (SBDC, Local0)
                            }

                            Store (Local0, Index (Arg1, 0x02))
                            Divide (Local1, 0x14, Local2, Index (Arg1, 0x06))
                            If (Local7)
                            {
                                Store (0xC8, Index (Arg1, 0x07))
                            }
                            ElseIf (SBDV)
                            {
                                Divide (0x00030D40, SBDV, Local2, Index (Arg1, 0x07))
                            }
                            Else
                            {
                                Store (0x00, Index (Arg1, 0x07))
                            }

                            Store (SBDV, Index (Arg1, 0x05))
                            Store (SBSN, Local0)
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Store (0x04, Local2)
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                Add (Local1, 0x30, Index (SERN, Local2))
                                Decrement (Local2)
                            }

                            Store (SERN, Index (Arg1, 0x11))
                            Store (SBDN, Index (Arg1, 0x10))
                            Name (BTYP, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                   
                            })
                            Store (SBCH, BTYP)
                            Store (BTYP, Index (Arg1, 0x12))
                            Store (SBMN, Index (Arg1, 0x13))
                        }
                        Else
                        {
                            Store (0xFFFFFFFF, Index (Arg1, 0x02))
                            Store (0x00, Index (Arg1, 0x06))
                            Store (0x00, Index (Arg1, 0x07))
                            Store (0xFFFFFFFF, Index (Arg1, 0x03))
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Method (GBST, 4, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (And (Arg1, 0x20))
                        {
                            Store (0x02, Local0)
                        }
                        ElseIf (And (Arg1, 0x40))
                        {
                            Store (0x01, Local0)
                        }
                        Else
                        {
                            Store (0x00, Local0)
                        }

                        If (And (Arg1, 0x07)){}
                        Else
                        {
                            Or (Local0, 0x04, Local0)
                        }

                        If (LEqual (And (Arg1, 0x07), 0x07))
                        {
                            Store (0x04, Local0)
                            Store (0x00, Local1)
                            Store (0x00, Local2)
                            Store (0x00, Local3)
                        }
                        Else
                        {
                            Store (SBVO, Local3)
                            If (Arg2)
                            {
                                Multiply (SBRC, 0x0A, Local2)
                            }
                            Else
                            {
                                Store (SBRC, Local2)
                            }

                            Store (SBAC, Local1)
                            If (LGreaterEqual (Local1, 0x8000))
                            {
                                If (And (Local0, 0x01))
                                {
                                    Subtract (0x00010000, Local1, Local1)
                                }
                                Else
                                {
                                    Store (0x00, Local1)
                                }
                            }
                            ElseIf (LNot (And (Local0, 0x02)))
                            {
                                Store (0x00, Local1)
                            }

                            If (Arg2)
                            {
                                Multiply (Local3, Local1, Local1)
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Store (Local0, Index (Arg3, 0x00))
                        Store (Local1, Index (Arg3, 0x01))
                        Store (Local2, Index (Arg3, 0x02))
                        Store (Local3, Index (Arg3, 0x03))
                        Release (BATM)
                        Return (Arg3)
                    }

                    Method (AJTP, 3, NotSerialized)
                    {
                        Store (Arg1, Local0)
                        Acquire (BATM, 0xFFFF)
                        Store (SBRC, Local1)
                        Release (BATM)
                        If (LEqual (Arg0, 0x00))
                        {
                            Store (HB0S, Local2)
                        }
                        Else
                        {
                            Store (HB1S, Local2)
                        }

                        If (And (Local2, 0x20))
                        {
                            If (LGreater (Arg2, 0x00))
                            {
                                Add (Local0, 0x01, Local0)
                            }

                            If (LLessEqual (Local0, Local1))
                            {
                                Add (Local1, 0x01, Local0)
                            }
                        }
                        ElseIf (And (Local2, 0x40))
                        {
                            If (LGreaterEqual (Local0, Local1))
                            {
                                Subtract (Local1, 0x01, Local0)
                            }
                        }

                        Return (Local0)
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Name (B0ST, 0x00)
                        Name (BT0I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BX0I, Package (0x15)
                        {
                            0x01, 
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0xFFFFFFFF, 
                            0x00, 
                            0x00, 
                            0xFFFFFFFF, 
                            0x00017318, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x03E8, 
                            0x01F4, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            "", 
                            "", 
                            "", 
                            "", 
                            0x00
                        })
                        Name (BT0P, Package (0x04){})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (H8DR)
                            {
                                Store (HB0A, B0ST)
                            }
                            ElseIf (And (RBEC (0x38), 0x80))
                            {
                                Store (0x01, B0ST)
                            }
                            Else
                            {
                                Store (0x00, B0ST)
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Store (0x00, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB0A)
                                {
                                    If (LEqual (And (HB0S, 0x07), 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (0x01, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (0x00, Local6)
                                }
                            }

                            GBIX (0x00, BX0I, Local7)
                            Store (DerefOf (Index (BX0I, 0x01)), Index (BT0I, 0x00))
                            Store (DerefOf (Index (BX0I, 0x02)), Index (BT0I, 0x01))
                            Store (DerefOf (Index (BX0I, 0x03)), Index (BT0I, 0x02))
                            Store (DerefOf (Index (BX0I, 0x04)), Index (BT0I, 0x03))
                            Store (DerefOf (Index (BX0I, 0x05)), Index (BT0I, 0x04))
                            Store (DerefOf (Index (BX0I, 0x06)), Index (BT0I, 0x05))
                            Store (DerefOf (Index (BX0I, 0x07)), Index (BT0I, 0x06))
                            Store (DerefOf (Index (BX0I, 0x0E)), Index (BT0I, 0x07))
                            Store (DerefOf (Index (BX0I, 0x0F)), Index (BT0I, 0x08))
                            Store (DerefOf (Index (BX0I, 0x10)), Index (BT0I, 0x09))
                            Store (DerefOf (Index (BX0I, 0x11)), Index (BT0I, 0x0A))
                            Store (DerefOf (Index (BX0I, 0x12)), Index (BT0I, 0x0B))
                            Store (DerefOf (Index (BX0I, 0x13)), Index (BT0I, 0x0C))
                            Return (BT0I)
                        }

                        Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
                        {
                            Store (0x00, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB0A)
                                {
                                    If (LEqual (And (HB0S, 0x07), 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (0x01, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (0x00, Local6)
                                }
                            }

                            Return (GBIX (0x00, BX0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            XOr (DerefOf (Index (BX0I, 0x01)), 0x01, Local0)
                            Return (GBST (0x00, HB0S, Local0, BT0P))
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003")  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            _SB
                        })
                        Name (XX00, Buffer (0x03){})
                        Name (ACDC, 0xFF)
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (LEqual (Acquire (UCCI, 0xA000), 0x00))
                            {
                                If (H8DR)
                                {
                                    Store (HPAC, Local0)
                                }
                                ElseIf (And (RBEC (0x46), 0x10))
                                {
                                    Store (0x01, Local0)
                                }
                                Else
                                {
                                    Store (0x00, Local0)
                                }

                                If (LOr (LNotEqual (Local0, ACDC), LEqual (ACDC, 0xFF)))
                                {
                                    CreateWordField (XX00, 0x00, SSZE)
                                    CreateByteField (XX00, 0x02, ACST)
                                    Store (0x03, SSZE)
                                    Store (Local0, ACDC)
                                    If (ACDC)
                                    {
                                        AFN4 (0x01)
                                        Store (0x00, ACST)
                                    }
                                    Else
                                    {
                                        AFN4 (0x02)
                                        Store (0x01, ACST)
                                    }

                                    ALIB (0x01, XX00)
                                }

                                Release (UCCI)
                            }

                            Return (Local0)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HKEY)
                    {
                        Name (_HID, EisaId ("LEN0268"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_INI, 0, NotSerialized)  // _INI: Initialize
                        {
                            DYTC (0x000F0001)
                        }

                        Method (MHKV, 0, NotSerialized)
                        {
                            Return (0x0200)
                        }

                        Name (DHKC, 0x00)
                        Name (DHKB, 0x01)
                        Name (DHKH, 0x00)
                        Name (DHKW, 0x00)
                        Name (DHKS, 0x00)
                        Name (DHKD, 0x00)
                        Name (DHKN, 0x0808)
                        Name (DHKE, 0x00)
                        Name (DHKF, 0x01FF7000)
                        Name (DHKT, 0x00)
                        Name (DHWW, 0x00)
                        Mutex (XDHK, 0x00)
                        Method (MHKA, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                Return (0x03)
                            }
                            ElseIf (LEqual (Arg0, 0x01))
                            {
                                Return (0xFFFFFFFB)
                            }
                            ElseIf (LEqual (Arg0, 0x02))
                            {
                                Return (0x00)
                            }
                            ElseIf (LEqual (Arg0, 0x03))
                            {
                                Return (0x01FF7000)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (MHKN, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                Return (0x03)
                            }
                            ElseIf (LEqual (Arg0, 0x01))
                            {
                                Return (DHKN)
                            }
                            ElseIf (LEqual (Arg0, 0x02))
                            {
                                Return (DHKE)
                            }
                            ElseIf (LEqual (Arg0, 0x03))
                            {
                                Return (DHKF)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (MHKK, 2, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                Return (0x03)
                            }
                            ElseIf (DHKC)
                            {
                                If (LEqual (Arg0, 0x01))
                                {
                                    Return (And (DHKN, Arg1))
                                }
                                ElseIf (LEqual (Arg0, 0x02))
                                {
                                    Return (And (DHKE, Arg1))
                                }
                                ElseIf (LEqual (Arg0, 0x03))
                                {
                                    Return (And (DHKF, Arg1))
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (MHKM, 2, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (LGreater (Arg0, 0x60))
                            {
                                Noop
                            }
                            ElseIf (LLessEqual (Arg0, 0x20))
                            {
                                ShiftLeft (One, Decrement (Arg0), Local0)
                                If (And (Local0, 0xFFFFFFFB))
                                {
                                    If (Arg1)
                                    {
                                        Or (Local0, DHKN, DHKN)
                                    }
                                    Else
                                    {
                                        And (DHKN, XOr (Local0, 0xFFFFFFFF), DHKN)
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                            ElseIf (LLessEqual (Arg0, 0x40))
                            {
                                Noop
                            }
                            ElseIf (LLessEqual (Arg0, 0x60))
                            {
                                Subtract (Arg0, 0x40, Arg0)
                                ShiftLeft (One, Decrement (Arg0), Local0)
                                If (And (Local0, 0x01FF7000))
                                {
                                    If (Arg1)
                                    {
                                        Or (Local0, DHKF, DHKF)
                                    }
                                    Else
                                    {
                                        And (DHKF, XOr (Local0, 0xFFFFFFFF), DHKF)
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }

                            Release (XDHK)
                        }

                        Method (MHKS, 0, NotSerialized)
                        {
                            Notify (SLPB, 0x80)
                        }

                        Method (MHKC, 1, NotSerialized)
                        {
                            Store (Arg0, DHKC)
                        }

                        Method (MHKP, 0, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (DHWW)
                            {
                                Store (DHWW, Local1)
                                Store (Zero, DHWW)
                            }
                            ElseIf (DHKW)
                            {
                                Store (DHKW, Local1)
                                Store (Zero, DHKW)
                            }
                            ElseIf (DHKD)
                            {
                                Store (DHKD, Local1)
                                Store (Zero, DHKD)
                            }
                            ElseIf (DHKS)
                            {
                                Store (DHKS, Local1)
                                Store (Zero, DHKS)
                            }
                            ElseIf (DHKT)
                            {
                                Store (DHKT, Local1)
                                Store (Zero, DHKT)
                            }
                            Else
                            {
                                Store (DHKH, Local1)
                                Store (Zero, DHKH)
                            }

                            Release (XDHK)
                            Return (Local1)
                        }

                        Method (MHKE, 1, Serialized)
                        {
                            Store (Arg0, DHKB)
                            Acquire (XDHK, 0xFFFF)
                            Store (Zero, DHKH)
                            Store (Zero, DHKW)
                            Store (Zero, DHKS)
                            Store (Zero, DHKD)
                            Store (Zero, DHKT)
                            Store (Zero, DHWW)
                            Release (XDHK)
                        }

                        Method (MHKQ, 1, Serialized)
                        {
                            If (DHKB)
                            {
                                If (DHKC)
                                {
                                    Acquire (XDHK, 0xFFFF)
                                    If (LLess (Arg0, 0x1000)){}
                                    ElseIf (LLess (Arg0, 0x2000))
                                    {
                                        Store (Arg0, DHKH)
                                    }
                                    ElseIf (LLess (Arg0, 0x3000))
                                    {
                                        Store (Arg0, DHKW)
                                    }
                                    ElseIf (LLess (Arg0, 0x4000))
                                    {
                                        Store (Arg0, DHKS)
                                    }
                                    ElseIf (LLess (Arg0, 0x5000))
                                    {
                                        Store (Arg0, DHKD)
                                    }
                                    ElseIf (LLess (Arg0, 0x6000))
                                    {
                                        Store (Arg0, DHKH)
                                    }
                                    ElseIf (LLess (Arg0, 0x7000))
                                    {
                                        Store (Arg0, DHKT)
                                    }
                                    ElseIf (LLess (Arg0, 0x8000))
                                    {
                                        Store (Arg0, DHWW)
                                    }
                                    Else
                                    {
                                    }

                                    Release (XDHK)
                                    Notify (HKEY, 0x80)
                                }
                                ElseIf (LEqual (Arg0, 0x1004))
                                {
                                    Notify (SLPB, 0x80)
                                }
                            }
                        }

                        Method (MHKB, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                BEEP (0x11)
                                Store (0x00, LIDB)
                            }
                            ElseIf (LEqual (Arg0, 0x01))
                            {
                                BEEP (0x10)
                                Store (0x01, LIDB)
                            }
                            Else
                            {
                            }
                        }

                        Method (MHKD, 0, NotSerialized)
                        {
                            If (LEqual (PLUX, 0x00)){}
                        }

                        Method (MHQC, 1, NotSerialized)
                        {
                            If (WNTF)
                            {
                                If (LEqual (Arg0, 0x00))
                                {
                                    Return (CWAC)
                                }
                                ElseIf (LEqual (Arg0, 0x01))
                                {
                                    Return (CWAP)
                                }
                                ElseIf (LEqual (Arg0, 0x02))
                                {
                                    Return (CWAT)
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHGC, 0, NotSerialized)
                        {
                            If (WNTF)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (CKC4 (0x00))
                                {
                                    Store (0x03, Local0)
                                }
                                Else
                                {
                                    Store (0x04, Local0)
                                }

                                Release (XDHK)
                                Return (Local0)
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHSC, 1, NotSerialized)
                        {
                        }

                        Method (CKC4, 1, NotSerialized)
                        {
                            Store (0x00, Local0)
                            If (C4WR)
                            {
                                If (LNot (C4AC))
                                {
                                    Or (Local0, 0x01, Local0)
                                }
                            }

                            If (C4NA)
                            {
                                Or (Local0, 0x02, Local0)
                            }

                            If (LAnd (CWAC, CWAS))
                            {
                                Or (Local0, 0x04, Local0)
                            }

                            And (Local0, Not (Arg0), Local0)
                            Return (Local0)
                        }

                        Method (MHQE, 0, NotSerialized)
                        {
                            Return (0x00)
                        }

                        Method (MHGE, 0, NotSerialized)
                        {
                            If (LAnd (C4WR, C4AC))
                            {
                                Return (0x04)
                            }

                            Return (0x03)
                        }

                        Method (MHSE, 1, NotSerialized)
                        {
                        }

                        Method (UAWO, 1, NotSerialized)
                        {
                            Return (UAWS (Arg0))
                        }

                        Method (MLCG, 1, NotSerialized)
                        {
                            Store (KBLS (0x00, 0x00), Local0)
                            Return (Local0)
                        }

                        Method (MLCS, 1, NotSerialized)
                        {
                            Store (KBLS (0x01, Arg0), Local0)
                            If (LNot (And (Local0, 0x80000000)))
                            {
                                If (And (Arg0, 0x00010000))
                                {
                                    MHKQ (0x6001)
                                }
                                ElseIf (MHKK (0x01, 0x00020000))
                                {
                                    MHKQ (0x1012)
                                }
                            }

                            Return (Local0)
                        }

                        Method (DSSG, 1, NotSerialized)
                        {
                            Or (0x0400, PDCI, Local0)
                            Return (Local0)
                        }

                        Method (DSSS, 1, NotSerialized)
                        {
                            Or (PDCI, Arg0, PDCI)
                        }

                        Method (SBSG, 1, NotSerialized)
                        {
                            Return (SYBC (0x00, 0x00))
                        }

                        Method (SBSS, 1, NotSerialized)
                        {
                            Return (SYBC (0x01, Arg0))
                        }

                        Method (PBLG, 1, NotSerialized)
                        {
                            Store (BRLV, Local0)
                            Or (Local0, 0x0F00, Local1)
                            Return (Local1)
                        }

                        Method (PBLS, 1, NotSerialized)
                        {
                            Store (Arg0, BRLV)
                            If (VIGD){}
                            Else
                            {
                                VBRC (BRLV)
                            }

                            If (LNot (NBCF))
                            {
                                MHKQ (0x6050)
                            }

                            Return (0x00)
                        }

                        Method (PMSG, 1, NotSerialized)
                        {
                            Store (PRSM (0x00, 0x00), Local0)
                            Return (Local0)
                        }

                        Method (PMSS, 1, NotSerialized)
                        {
                            PRSM (0x01, Arg0)
                            Return (0x00)
                        }

                        Method (ISSG, 1, NotSerialized)
                        {
                            Store (ISSP, Local0)
                            If (ISSP)
                            {
                                Or (Local0, 0x01000000, Local0)
                                Or (Local0, ShiftLeft (ISFS, 0x19), Local0)
                            }

                            Or (Local0, And (ISCG, 0x30), Local0)
                            And (Local0, 0xFFFFFFFE, Local0)
                            Or (Local0, 0x02, Local0)
                            Or (Local0, ShiftLeft (And (ISWK, 0x02), 0x02), Local0)
                            Return (Local0)
                        }

                        Method (ISSS, 1, NotSerialized)
                        {
                            Store (Arg0, ISCG)
                            Return (0x00)
                        }

                        Method (FFSG, 1, NotSerialized)
                        {
                            Return (0x00)
                        }

                        Method (FFSS, 1, NotSerialized)
                        {
                            Return (0x80000000)
                        }

                        Method (GMKS, 0, NotSerialized)
                        {
                            If (HFNE){}
                            ElseIf (And (0x01, FNKC))
                            {
                                WFIO (0x18, 0x00)
                            }
                            Else
                            {
                                WFIO (0x18, 0x01)
                            }

                            Return (FNSC (0x02, 0x00))
                        }

                        Method (SMKS, 1, NotSerialized)
                        {
                            If (HFNE){}
                            ElseIf (And (Arg0, 0x01))
                            {
                                WFIO (0x18, 0x00)
                            }
                            Else
                            {
                                WFIO (0x18, 0x01)
                            }

                            Store (FNSC (0x03, And (Arg0, 0x00010001)), Local0)
                            MHKQ (0x6060)
                            Return (Local0)
                        }

                        Method (GSKL, 1, NotSerialized)
                        {
                            Return (FNSC (0x04, And (Arg0, 0x0F000000)))
                        }

                        Method (SSKL, 1, NotSerialized)
                        {
                            Return (FNSC (0x05, And (Arg0, 0x0F00FFFF)))
                        }

                        Method (INSG, 1, NotSerialized)
                        {
                            Store (IOEN, Local0)
                            Or (Local0, ShiftLeft (IOST, 0x07), Local0)
                            Or (Local0, ShiftLeft (IOCP, 0x08), Local0)
                            Or (Local0, 0x10000000, Local0)
                            Return (Local0)
                        }

                        Method (INSS, 1, NotSerialized)
                        {
                            If (And (Arg0, 0x10000000))
                            {
                                If (IOCP)
                                {
                                    Store (ShiftRight (And (Arg0, 0x80), 0x07), Local0)
                                    If (LNot (EZRC (Local0)))
                                    {
                                        Store (Local0, IOST)
                                    }
                                }

                                Return (0x00)
                            }

                            If (LAnd (IOCP, And (Arg0, 0x01)))
                            {
                                Store (0x01, IOEN)
                            }
                            Else
                            {
                                Store (0x00, IOEN)
                                If (IOST)
                                {
                                    If (LNot (ISOC (0x00)))
                                    {
                                        Store (0x00, IOST)
                                    }
                                }
                            }

                            Return (0x00)
                        }
                    }

                    Scope (HKEY)
                    {
                        Name (INDV, 0x00)
                        Method (MHQI, 0, NotSerialized)
                        {
                            Return (0x00)
                        }

                        Method (MHGI, 1, NotSerialized)
                        {
                            Name (RETB, Buffer (0x10){})
                            CreateByteField (RETB, 0x00, MHGS)
                            ShiftLeft (0x01, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, 0x00))
                                {
                                    CreateField (RETB, 0x08, 0x78, BRBU)
                                    Store (IPMB, BRBU)
                                    Store (0x10, MHGS)
                                }
                                ElseIf (LEqual (Arg0, 0x01))
                                {
                                    CreateField (RETB, 0x08, 0x18, RRBU)
                                    Store (IPMR, RRBU)
                                    Store (0x04, MHGS)
                                }
                                ElseIf (LEqual (Arg0, 0x08))
                                {
                                    CreateField (RETB, 0x10, 0x18, ODBU)
                                    CreateByteField (RETB, 0x01, MHGZ)
                                    Store (IPMO, ODBU)
                                    Store (0x05, MHGS)
                                }
                                ElseIf (LEqual (Arg0, 0x09))
                                {
                                    CreateField (RETB, 0x10, 0x08, AUBU)
                                    Store (IPMA, AUBU)
                                    Store (0x01, Index (RETB, 0x01))
                                    Store (0x03, MHGS)
                                }
                                ElseIf (LEqual (Arg0, 0x02))
                                {
                                    Store (VDYN (0x00, 0x00), Local1)
                                    And (Local1, 0x0F, Index (RETB, 0x02))
                                    ShiftRight (Local1, 0x04, Local1)
                                    And (Local1, 0x0F, Index (RETB, 0x01))
                                    Store (0x03, MHGS)
                                }
                            }

                            Return (RETB)
                        }

                        Method (MHSI, 2, NotSerialized)
                        {
                            ShiftLeft (0x01, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, 0x08))
                                {
                                    If (Arg1)
                                    {
                                        If (H8DR)
                                        {
                                            Store (HPBU, Local1)
                                        }
                                        Else
                                        {
                                            And (RBEC (0x47), 0x01, Local1)
                                        }
                                    }
                                }
                                ElseIf (LEqual (Arg0, 0x02))
                                {
                                    VDYN (0x01, Arg1)
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC0.EC0)
                    {
                        OperationRegion (FAD5, SystemMemory, 0xFED815AA, 0x01)
                        Field (FAD5, ByteAcc, NoLock, Preserve)
                        {
                                ,   6, 
                            FAD6,   1, 
                            Offset (0x01)
                        }

                        OperationRegion (CMS7, SystemMemory, 0xFED80700, 0x80)
                        Field (CMS7, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0x51), 
                                ,   1, 
                            CM8D,   1, 
                            CM8J,   1, 
                            Offset (0x52)
                        }

                        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            If (LEqual (CM8J, 0x01))
                            {
                                If (LEqual (CM8D, 0x01))
                                {
                                    Store (0x00, CM8D)
                                }
                                Else
                                {
                                    Store (0x01, CM8D)
                                }
                            }

                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf (^HKEY.MHKK (0x01, 0x04000000))
                            {
                                ^HKEY.MHKQ (0x101B)
                            }
                        }
                    }

                    Scope (HKEY)
                    {
                        Method (MMTG, 0, NotSerialized)
                        {
                            Store (0x0101, Local0)
                            If (HDMC)
                            {
                                Or (Local0, 0x00010000, Local0)
                            }

                            Return (Local0)
                        }

                        Method (MMTS, 1, NotSerialized)
                        {
                            If (HDMC)
                            {
                                WECM (0x51, 0x01)
                            }
                            ElseIf (LEqual (Arg0, 0x02))
                            {
                                WFIO (0x2A, 0x00)
                                WECM (0x51, 0x03)
                            }
                            ElseIf (LEqual (Arg0, 0x03)){}
                            Else
                            {
                                WFIO (0x2A, 0x01)
                                WECM (0x51, 0x01)
                            }
                        }
                    }

                    Scope (HKEY)
                    {
                        Method (PWMC, 0, NotSerialized)
                        {
                            Return (0x00)
                        }

                        Method (PWMG, 0, NotSerialized)
                        {
                            Store (PWMH, Local0)
                            ShiftLeft (Local0, 0x08, Local0)
                            Or (Local0, PWML, Local0)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC0.EC0)
                    {
                        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            ^HKEY.MHKQ (0x6000)
                        }

                        Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            ^HKEY.MHKQ (0x6060)
                            If (LEqual (WLMD, 0x00))
                            {
                                If (FNKC)
                                {
                                    WFIO (0x18, 0x00)
                                }
                                Else
                                {
                                    WFIO (0x18, 0x01)
                                }
                            }
                        }
                    }

                    Scope (HKEY)
                    {
                    }

                    Scope (\_SB.PCI0.LPC0.EC0)
                    {
                        Name (BTBF, Buffer (0x0100)
                        {
                             0x00                                           
                        })
                        Method (BTIF, 0, NotSerialized)
                        {
                            Store (TWBT, BTBF)
                            Return (BTBF)
                        }
                    }

                    Scope (HKEY)
                    {
                        Method (SBIG, 1, NotSerialized)
                        {
                            Return (BTIF ())
                        }
                    }

                    OperationRegion (ECMM, SystemMemory, 0xFE00D000, 0x1000)
                    Field (ECMM, AnyAcc, Lock, Preserve)
                    {
                        Offset (0x2BF), 
                        WLMD,   1, 
                            ,   6, 
                        ACOS,   1, 
                        Offset (0x3D7), 
                        OTYE,   3, 
                        Offset (0x3D9), 
                        S3ST,   1, 
                        S3RM,   1, 
                        S4ST,   1, 
                        S4RM,   1, 
                        S5ST,   1, 
                        S5RM,   1, 
                        Offset (0x3DA), 
                        Offset (0x3DC), 
                        NPST,   5, 
                        Offset (0x4A7), 
                        OSTT,   8, 
                        OSST,   8, 
                        THLT,   8, 
                        TCNL,   8, 
                        MODE,   1, 
                            ,   2, 
                        INIT,   1, 
                        FAN1,   1, 
                        FAN2,   1, 
                        FANT,   1, 
                        SKNM,   1, 
                        SDTM,   8, 
                        FSSN,   4, 
                        FANU,   4, 
                            ,   6, 
                        SWTO,   1, 
                        TTHR,   1, 
                        TTHM,   1, 
                        THTL,   1, 
                            ,   2, 
                        Offset (0x4B0), 
                        CTMP,   8, 
                        CTML,   8, 
                        SKTA,   8, 
                        SKTB,   8, 
                        SKTC,   8, 
                        Offset (0x4B6), 
                        NTMP,   8, 
                        Offset (0x4B8), 
                        Offset (0x580), 
                            ,   6, 
                        LGBF,   1, 
                        BTLF,   1, 
                        Offset (0x965), 
                        OSML,   8, 
                        OSMH,   8, 
                        Offset (0xE00), 
                        TWBT,   2048, 
                        T2BT,   2048
                    }

                    Scope (HKEY)
                    {
                        Name (LQCS, 0x00)
                        Name (AM00, 0x00)
                        Name (AM01, 0x00)
                        Name (AM02, 0x00)
                        Name (AM03, 0x00)
                        Name (AM04, 0x00)
                        Name (AM05, 0x00)
                        Name (AM06, 0x00)
                        Name (AM07, 0x00)
                        Name (AM08, 0x00)
                        Name (AM09, 0x00)
                        Name (AM0A, 0x00)
                        Name (AM0B, 0x00)
                        Name (AM0C, 0x00)
                        Name (AM0D, 0x00)
                        Name (AM0E, 0x00)
                        Name (AM0F, 0x00)
                        Method (LQCC, 1, NotSerialized)
                        {
                            If (LEqual (And (Arg0, 0xFFFF), 0x0100))
                            {
                                Store (HAM0, AM00)
                                Store (HAM1, AM01)
                                Store (HAM2, AM02)
                                Store (HAM3, AM03)
                                Store (HAM4, AM04)
                                Store (HAM5, AM05)
                                Store (HAM6, AM06)
                                Store (HAM7, AM07)
                                Store (HAM8, AM08)
                                Store (HAM9, AM09)
                                Store (HAMA, AM0A)
                                Store (HAMB, AM0B)
                                Store (HAMC, AM0C)
                                Store (HAMD, AM0D)
                                Store (HAME, AM0E)
                                Store (HAMF, AM0F)
                                Store (0x01, LQCS)
                                Return (0x01)
                            }
                            ElseIf (LEqual (And (Arg0, 0xFFFF), 0x0101))
                            {
                                If (LEqual (LQCS, 0x01))
                                {
                                    If (LEqual (And (Arg0, 0x00010000), 0x00010000))
                                    {
                                        Store (And (AM00, 0xFF), HAM0)
                                        Store (And (AM01, 0xFF), HAM1)
                                        Store (And (AM02, 0x87), HAM2)
                                        Store (And (AM03, 0x4D), HAM3)
                                        Store (And (AM04, 0xFF), HAM4)
                                        Store (And (AM05, 0xFF), HAM5)
                                        Store (And (AM06, 0xFF), HAM6)
                                        Store (And (AM07, 0x8F), HAM7)
                                        Store (And (AM08, 0xF7), HAM8)
                                        Store (And (AM09, 0xFF), HAM9)
                                        Store (And (AM0A, 0xFF), HAMA)
                                        Store (And (AM0B, 0xFF), HAMB)
                                        Store (And (AM0C, 0x00), HAMC)
                                        Store (And (AM0D, 0xE0), HAMD)
                                        Store (And (AM0E, 0xE2), HAME)
                                        Store (And (AM0F, 0xFF), HAMF)
                                        Store (0x01, QCON)
                                        Return (0x00)
                                    }
                                    ElseIf (LEqual (And (Arg0, 0x00010000), 0x00))
                                    {
                                        Store (AM00, HAM0)
                                        Store (AM01, HAM1)
                                        Store (AM02, HAM2)
                                        Store (AM03, HAM3)
                                        Store (AM04, HAM4)
                                        Store (AM05, HAM5)
                                        Store (AM06, HAM6)
                                        Store (AM07, HAM7)
                                        Store (AM08, HAM8)
                                        Store (AM09, HAM9)
                                        Store (AM0A, HAMA)
                                        Store (AM0B, HAMB)
                                        Store (AM0C, HAMC)
                                        Store (AM0D, HAMD)
                                        Store (AM0E, HAME)
                                        Store (AM0F, HAMF)
                                        Store (0x00, QCON)
                                        Return (0x00)
                                    }
                                }
                            }

                            Return (0x10000000)
                        }
                    }
                }
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            OperationRegion (ASDF, SystemIO, 0x72, 0x02)
            Field (ASDF, ByteAcc, NoLock, Preserve)
            {
                INDX,   8, 
                DATA,   8
            }

            IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
            {
                Offset (0x8E), 
                SDFG,   8
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (H8DR)
                {
                    Store (^^PCI0.LPC0.EC0.HPLD, SDFG)
                    Return (^^PCI0.LPC0.EC0.HPLD)
                }
                ElseIf (And (RBEC (0x46), 0x04))
                {
                    Return (0x01)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (LWCP)
                {
                    Return (Package (0x02)
                    {
                        0x08, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x08, 
                        0x03
                    })
                }
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, ^^PCI0.LPC0.EC0.HWLO)
                    }
                    Else
                    {
                        Store (0x00, ^^PCI0.LPC0.EC0.HWLO)
                    }
                }
                ElseIf (Arg0)
                {
                    MBEC (0x32, 0xFF, 0x04)
                }
                Else
                {
                    MBEC (0x32, 0xFB, 0x00)
                }

                If (LWCP)
                {
                    If (Arg0)
                    {
                        Store (0x01, LWEN)
                        Store (0x01, ^^PCI0.LPC0.EC0.BTPC)
                    }
                    Else
                    {
                        Store (0x00, LWEN)
                        Store (0x00, ^^PCI0.LPC0.EC0.BTPC)
                    }
                }
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x08, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, ^^PCI0.LPC0.EC0.HWFN)
                    }
                    Else
                    {
                        Store (0x00, ^^PCI0.LPC0.EC0.HWFN)
                    }
                }
                ElseIf (Arg0)
                {
                    MBEC (0x32, 0xFF, 0x10)
                }
                Else
                {
                    MBEC (0x32, 0xEF, 0x00)
                }
            }
        }

        Scope (PCI0.LPC0.EC0)
        {
            Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (^HKEY.DHKC, 0x00))
                {
                    Store (0x00, HMUT)
                    WFIO (0x54, 0x00)
                }

                SCMS (0x18)
            }

            Method (SAUM, 1, NotSerialized)
            {
                If (LGreater (Arg0, 0x03))
                {
                    Noop
                }
                ElseIf (H8DR)
                {
                    Store (Arg0, HAUM)
                }
                Else
                {
                    MBEC (0x03, 0x9F, ShiftLeft (Arg0, 0x05))
                }
            }
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            OperationRegion (FAD7, SystemMemory, 0xFED81652, 0x01)
            Field (FAD7, ByteAcc, NoLock, Preserve)
            {
                    ,   6, 
                FAD8,   1, 
                Offset (0x01)
            }

            OperationRegion (CMS8, SystemMemory, 0xFED80700, 0x80)
            Field (CMS8, ByteAcc, NoLock, Preserve)
            {
                Offset (0x51), 
                CM8C,   1, 
                    ,   1, 
                CM8I,   1, 
                Offset (0x52)
            }

            Method (GSMS, 1, NotSerialized)
            {
                Return (AUDC (0x00, 0x00))
            }

            Method (SSMS, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x00))
                {
                    If (LEqual (CM8I, 0x00))
                    {
                        WFIO (0x54, 0x00)
                    }

                    Sleep (0x32)
                    Store (0x00, CM8C)
                }
                Else
                {
                    If (LEqual (CM8I, 0x00))
                    {
                        WFIO (0x54, 0x01)
                    }

                    Sleep (0x32)
                    Store (0x01, CM8C)
                }

                Return (AUDC (0x01, And (Arg0, 0x01)))
            }

            Method (SHDA, 1, NotSerialized)
            {
                Return (AUDC (0x02, And (Arg0, 0x01)))
            }
        }

        Scope (PCI0.LPC0.EC0)
        {
            Name (BRTW, Package (0x12)
            {
                0x64, 
                0x64, 
                0x05, 
                0x0A, 
                0x14, 
                0x19, 
                0x1E, 
                0x23, 
                0x28, 
                0x2D, 
                0x32, 
                0x37, 
                0x3C, 
                0x41, 
                0x46, 
                0x50, 
                0x5A, 
                0x64
            })
            Name (BRTB, Package (0x04)
            {
                Package (0x16)
                {
                    0x16, 
                    0x04, 
                    0x04, 
                    0x07, 
                    0x0A, 
                    0x0E, 
                    0x13, 
                    0x18, 
                    0x1F, 
                    0x27, 
                    0x30, 
                    0x3A, 
                    0x48, 
                    0x5F, 
                    0x83, 
                    0xB4, 
                    0xE1, 
                    0xFF, 
                    0x04E2, 
                    0x04E2, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x19, 
                    0x04, 
                    0x04, 
                    0x07, 
                    0x0A, 
                    0x0E, 
                    0x13, 
                    0x17, 
                    0x1C, 
                    0x23, 
                    0x2C, 
                    0x33, 
                    0x3E, 
                    0x53, 
                    0x78, 
                    0x9C, 
                    0xCE, 
                    0xFF, 
                    0x04E2, 
                    0x04E2, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x1E, 
                    0x04, 
                    0x04, 
                    0x07, 
                    0x0A, 
                    0x0E, 
                    0x11, 
                    0x16, 
                    0x1B, 
                    0x21, 
                    0x29, 
                    0x32, 
                    0x3C, 
                    0x46, 
                    0x64, 
                    0x8C, 
                    0xB4, 
                    0xFF, 
                    0x04E2, 
                    0x04E2, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x28, 
                    0x04, 
                    0x04, 
                    0x07, 
                    0x0A, 
                    0x0E, 
                    0x11, 
                    0x16, 
                    0x1B, 
                    0x21, 
                    0x29, 
                    0x32, 
                    0x3C, 
                    0x46, 
                    0x64, 
                    0x8C, 
                    0xB4, 
                    0xFF, 
                    0x04E2, 
                    0x04E2, 
                    0x04, 
                    0x04
                }
            })
            Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (^HKEY.MHKK (0x01, 0x8000))
                {
                    ^HKEY.MHKQ (0x1010)
                }

                Notify (^^^GP17.VGA.LCD, 0x86)
            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (^HKEY.MHKK (0x01, 0x00010000))
                {
                    ^HKEY.MHKQ (0x1011)
                }

                Notify (^^^GP17.VGA.LCD, 0x87)
            }

            Method (BFRQ, 0, NotSerialized)
            {
                Store (0x80000100, Local0)
                Store (DerefOf (Index (DerefOf (Index (BRTB, BNTN)), 0x13)), Local1)
                Or (ShiftLeft (Local1, 0x09), Local0, Local0)
                Store (DerefOf (Index (DerefOf (Index (BRTB, BNTN)), 0x15)), Local1)
                Or (Local1, Local0, Local0)
                Return (Local0)
            }
        }

        Scope (PCI0.LPC0.EC0)
        {
            Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (^HKEY.MHKK (0x01, 0x00800000))
                {
                    ^HKEY.MHKQ (0x1018)
                }

                SCMS (0x03)
            }
        }

        Scope (PCI0.LPC0.EC0)
        {
            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (^HKEY.MHKK (0x01, 0x00080000))
                {
                    ^HKEY.MHKQ (0x1014)
                }

                SCMS (0x0B)
            }
        }

        Scope (PCI0.LPC0.EC0)
        {
            Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (FNST, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Store (HFNS, Local0)
                    Store (HFNE, Local1)
                }
                Else
                {
                    And (RBEC (0x0E), 0x03, Local0)
                    And (RBEC (0x00), 0x08, Local1)
                }

                If (Local1)
                {
                    If (LEqual (Local0, 0x00))
                    {
                        WFIO (0x18, 0x01)
                        SCMS (0x11)
                    }

                    If (LEqual (Local0, 0x01))
                    {
                        WFIO (0x18, 0x00)
                        SCMS (0x0F)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        WFIO (0x18, 0x00)
                        SCMS (0x10)
                    }

                    ^HKEY.MHKQ (0x6005)
                }
            }
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Method (GHSL, 1, NotSerialized)
            {
                Return (FNSC (0x00, 0x00))
            }

            Method (SHSL, 1, NotSerialized)
            {
                Return (FNSC (0x01, And (Arg0, 0x00010001)))
            }
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Name (WGFL, 0x00)
            Method (WSIF, 0, NotSerialized)
            {
                Return (0x00)
            }

            Method (WLSW, 0, NotSerialized)
            {
                Return (0x10010001)
            }

            Method (GWAN, 0, NotSerialized)
            {
                Store (0x00, Local0)
                If (And (WGFL, 0x01))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (And (WGFL, 0x08))
                {
                    Return (Local0)
                }

                If (WPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                Or (Local0, 0x04, Local0)
                Return (Local0)
            }

            Method (SWAN, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    WPWC (0x01)
                }
                Else
                {
                    WPWC (0x00)
                }
            }

            Method (GBDC, 0, NotSerialized)
            {
                Store (0x00, Local0)
                If (And (WGFL, 0x10))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (And (WGFL, 0x80))
                {
                    Return (Local0)
                }

                If (BPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                Or (Local0, 0x04, Local0)
                Return (Local0)
            }

            Method (SBDC, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    BPWC (0x01)
                }
                Else
                {
                    BPWC (0x00)
                }
            }

            Method (WPWS, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Store (DCWW, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (RBEC (0x3A), 0x40), 0x06), Local0)
                }

                Return (Local0)
            }

            Method (WPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, 0x01), LNot (And (WGFL, 0x08)))))
                {
                    If (H8DR)
                    {
                        Store (One, DCWW)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xFF, 0x40)
                    }

                    Or (WGFL, 0x02, WGFL)
                }
                Else
                {
                    If (H8DR)
                    {
                        Store (Zero, DCWW)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xBF, 0x00)
                    }

                    And (WGFL, 0xFFFFFFFD, WGFL)
                }
            }

            Method (BPWS, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Store (DCBD, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (RBEC (0x3A), 0x10), 0x04), Local0)
                }

                Return (Local0)
            }

            Method (BPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, 0x10), LNot (And (WGFL, 0x80)))))
                {
                    If (H8DR)
                    {
                        Store (One, DCBD)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xFF, 0x10)
                    }

                    Or (WGFL, 0x20, WGFL)
                }
                Else
                {
                    If (H8DR)
                    {
                        Store (Zero, DCBD)
                    }
                    Else
                    {
                        MBEC (0x3A, 0xEF, 0x00)
                    }

                    And (WGFL, 0xFFFFFFDF, WGFL)
                }
            }

            Method (WGIN, 0, NotSerialized)
            {
                Store (0x00, WGFL)
                Store (WGSV (0x01), WGFL)
                If (WIN8)
                {
                    If (LAnd (WGFL, 0x10))
                    {
                        BPWC (0x01)
                    }
                }

                If (WPWS ())
                {
                    Or (WGFL, 0x02, WGFL)
                }

                If (BPWS ())
                {
                    Or (WGFL, 0x20, WGFL)
                }
            }

            Method (WGPS, 1, NotSerialized)
            {
                If (LGreaterEqual (Arg0, 0x04))
                {
                    BLTH (0x05)
                }
            }

            Method (WGWK, 1, NotSerialized)
            {
                Noop
            }
        }

        Scope (PCI0.LPC0.EC0)
        {
            Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
            {
                ^HKEY.MHKQ (0x7000)
            }
        }

        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_WDG, Buffer (0xC8)
            {
                /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,
                /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,
                /* 0010 */  0x41, 0x30, 0x60, 0x05, 0x64, 0x9A, 0x47, 0x98,
                /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,
                /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,
                /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,
                /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,
                /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,
                /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,
                /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,
                /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,
                /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,
                /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,
                /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,
                /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,
                /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,
                /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,
                /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x1A, 0x65, 0x64, 0x73,
                /* 0090 */  0x2F, 0x13, 0xE7, 0x4F, 0xAD, 0xAA, 0x40, 0xC6,
                /* 0098 */  0xC7, 0xEE, 0x2E, 0x3B, 0x41, 0x37, 0x01, 0x06,
                /* 00A0 */  0x2C, 0xEF, 0xDD, 0xDF, 0xD4, 0x57, 0xCE, 0x48,
                /* 00A8 */  0xB1, 0x96, 0x0F, 0xB7, 0x87, 0xD9, 0x08, 0x36,
                /* 00B0 */  0x43, 0x30, 0x01, 0x06, 0x21, 0x12, 0x90, 0x05,
                /* 00B8 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                /* 00C0 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00 
            })
            Name (RETN, Package (0x05)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy"
            })
            Name (ITEM, Package (0x7C)
            {
                Package (0x02)
                {
                    0x0E, 
                    "WakeOnLAN"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBBIOSSupport"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AlwaysOnUSB"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TrackPoint"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TouchPad"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnSticky"
                }, 

                Package (0x02)
                {
                    0x04, 
                    "ThinkPadNumLock"
                }, 

                Package (0x02)
                {
                    0x0C, 
                    "PowerOnNumLock"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "BootDisplayDevice"
                }, 

                Package (0x02)
                {
                    0x06, 
                    "CDROMSpeed"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CPUPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PowerControlBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LowBatteryAlarm"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "KeyboardBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExtendedMemoryTest"
                }, 

                Package (0x02)
                {
                    0x07, 
                    "SATAControllerMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CoreMultiProcessing"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VirtualizationTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LockBIOSSetting"
                }, 

                Package (0x02)
                {
                    0x0B, 
                    "MinimumPasswordLength"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtUnattendedBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPredesktopAuthentication"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "FingerprintSecurityMode"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "SecurityChip"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSUpdateByEndUsers"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "DataExecutionPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EthernetLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessWANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BluetoothAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessUSBAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ModemAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IEEE1394Access"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExpressCardAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PCIExpressSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UltrabayAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MemoryCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SmartCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IntegratedCameraAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IntegratedAudioAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MicrophoneAccess"
                }, 

                Package (0x02)
                {
                    0x0A, 
                    "BootMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "StartupOptionKeys"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootDeviceListF12Option"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "BootOrder"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WiMAXAccess"
                }, 

                Package (0x02)
                {
                    0x0D, 
                    "GraphicsDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TXTFeature"
                }, 

                Package (0x02)
                {
                    0x18, 
                    "AmdVt"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "AMTControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintReaderAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OsDetectionForSwitchableGraphics"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "ComputraceModuleActivation"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "PCIExpressPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "eSATAPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HardwarePasswordManager"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HyperThreadingTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnCtrlKeySwap"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtReboot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PowerOnByAcAttach"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "NetworkBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootOrderLock"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }, 

                Package (0x02)
                {
                    0x11, 
                    "ExpressCardSpeed"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "RapidStartTechnology"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "KeyboardIllumination"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv4NetworkStack"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv6NetworkStack"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "UefiPxeBootPriority"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PhysicalPresenceForTpmClear"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureRollBackPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "NfcAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BottomCoverTamperDetected"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordCountExceededError"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtBootDeviceList"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "UMAFramebufferSize"
                }, 

                Package (0x02)
                {
                    0x15, 
                    "BootTimeExtension"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnKeyAsPrimary"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WiGig"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtPowerOn"
                }, 

                Package (0x02)
                {
                    0x16, 
                    "SGXControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "InternalStorageTamper"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessAutoDisconnection"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBKeyProvisioning"
                }, 

                Package (0x02)
                {
                    0x1B, 
                    "MACAddressPassThrough"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ThunderboltAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WindowsUEFIFirmwareUpdate"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WakeOnLANDock"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WakeByThunderbolt"
                }, 

                Package (0x02)
                {
                    0x17, 
                    "ThunderboltSecurityLevel"
                }, 

                Package (0x02)
                {
                    0x1A, 
                    "PreBootForThunderboltDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PreBootForThunderboltUSBDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "DeviceGuard"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "DashEnabled"
                }, 

                Package (0x02)
                {
                    0x21, 
                    "LidSensor"
                }, 

                Package (0x02)
                {
                    0x20, 
                    "SleepState"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ThinkShieldsecurewipe"
                }, 

                Package (0x02)
                {
                    0x22, 
                    "SetupUI"
                }, 

                Package (0x02)
                {
                    0x23, 
                    "KeyboardLayout"
                }, 

                Package (0x02)
                {
                    0x1C, 
                    "WakeUponAlarm"
                }, 

                Package (0x02)
                {
                    0x1D, 
                    "AlarmDate"
                }, 

                Package (0x02)
                {
                    0x1E, 
                    "AlarmTime"
                }, 

                Package (0x02)
                {
                    0x1F, 
                    "AlarmDayofWeek"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UserDefinedAlarmSunday"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UserDefinedAlarmMonday"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UserDefinedAlarmTuesday"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UserDefinedAlarmWednesday"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UserDefinedAlarmThursday"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UserDefinedAlarmFriday"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UserDefinedAlarmSaturday"
                }, 

                Package (0x02)
                {
                    0x1E, 
                    "UserDefinedAlarmTime"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ChargeInBatteryMode"
                }, 

                Package (0x02)
                {
                    0x24, 
                    "HdmiModeSelect"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TSME"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "StrongPassword"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPasswordAuthentication"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EnhancedWindowsBiometricSecurity"
                }
            })
            Name (VSEL, Package (0x25)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "Automatic"
                }, 

                Package (0x04)
                {
                    "Active", 
                    "Inactive", 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "High"
                }, 

                Package (0x02)
                {
                    "Independent", 
                    "Synchronized"
                }, 

                Package (0x05)
                {
                    "LCD", 
                    "", 
                    "HDMI", 
                    "USBTypeCA", 
                    "USBTypeCB"
                }, 

                Package (0x03)
                {
                    "High", 
                    "Normal", 
                    "Silent"
                }, 

                Package (0x02)
                {
                    "Compatibility", 
                    "AHCI"
                }, 

                Package (0x02)
                {
                    "External", 
                    "InternalOnly"
                }, 

                Package (0x02)
                {
                    "MaximizePerformance", 
                    "Balanced"
                }, 

                Package (0x02)
                {
                    "Quick", 
                    "Diagnostics"
                }, 

                Package (0x0A)
                {
                    "Disable", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "8", 
                    "9", 
                    "10", 
                    "11", 
                    "12"
                }, 

                Package (0x03)
                {
                    "Auto", 
                    "On", 
                    "Off"
                }, 

                Package (0x03)
                {
                    "IntegratedGfx", 
                    "DiscreteGfx", 
                    "SwitchableGfx"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "ACOnly", 
                    "ACandBattery"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Disable"
                }, 

                Package (0x02)
                {
                    "HDMI", 
                    "USBTypeC"
                }, 

                Package (0x02)
                {
                    "Generation1", 
                    "Automatic"
                }, 

                Package (0x03)
                {
                    "ThinkLightOnly", 
                    "BacklightOnly", 
                    "Both"
                }, 

                Package (0x02)
                {
                    "IPv6First", 
                    "IPv4First"
                }, 

                Package (0x04)
                {
                    "Auto", 
                    "512MB", 
                    "1GB", 
                    "2GB"
                }, 

                Package (0x0B)
                {
                    "Disable", 
                    "1", 
                    "2", 
                    "3", 
                    "", 
                    "5", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "10"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "SoftwareControl"
                }, 

                Package (0x04)
                {
                    "NoSecurity", 
                    "UserAuthorization", 
                    "SecureConnect", 
                    "DisplayPortandUSB"
                }, 

                Package (0x02)
                {
                    "Enable", 
                    "Disable"
                }, 

                Package (0x03)
                {
                    "Enable", 
                    "", 
                    "Disable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Pre-BootACL"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Second"
                }, 

                Package (0x05)
                {
                    "Disable", 
                    "UserDefined", 
                    "WeeklyEvent", 
                    "DailyEvent", 
                    "SingleEvent"
                }, 

                Package (0x01)
                {
                    "MM/DD/YYYY"
                }, 

                Package (0x01)
                {
                    "HH/MM/SS"
                }, 

                Package (0x07)
                {
                    "Sunday", 
                    "Monday", 
                    "Tuesday", 
                    "Wednesday", 
                    "Thursday", 
                    "Friday", 
                    "Saturday"
                }, 

                Package (0x02)
                {
                    "Linux", 
                    "Windows 10"
                }, 

                Package (0x02)
                {
                    "Enable", 
                    "Disable"
                }, 

                Package (0x02)
                {
                    "SimpleText", 
                    "Graphical"
                }, 

                Package (0x1B)
                {
                    "English_US", 
                    "CanadianFrenchMultilingual", 
                    "CanadianFrench", 
                    "Spanish_LA", 
                    "Portuguese_BR", 
                    "Belgian", 
                    "Danish", 
                    "Spanish", 
                    "French", 
                    "German", 
                    "Hungarian", 
                    "Icelandic", 
                    "Italian", 
                    "Norwegian", 
                    "Portuguese", 
                    "Slovenian", 
                    "Swedish", 
                    "Swiss", 
                    "Turkish", 
                    "English_UK", 
                    "Japanese", 
                    "Korean", 
                    "TraditionalChinese", 
                    "Turkish-F", 
                    "Estonian", 
                    "Finnish", 
                    "Czech"
                }, 

                Package (0x02)
                {
                    "HDMI2.0", 
                    "HDMI1.4"
                }
            })
            Name (VLST, Package (0x11)
            {
                "HDD0", 
                "HDD1", 
                "HDD2", 
                "HDD3", 
                "HDD4", 
                "PCILAN", 
                "ATAPICD0", 
                "ATAPICD1", 
                "ATAPICD2", 
                "USBFDD", 
                "USBCD", 
                "USBHDD", 
                "OtherHDD", 
                "OtherCD", 
                "NVMe0", 
                "NVMe1", 
                "NODEV"
            })
            Name (VR01, Package (0x67)
            {
                "0000", 
                "1998", 
                "1999", 
                "2000", 
                "2001", 
                "2002", 
                "2003", 
                "2004", 
                "2005", 
                "2006", 
                "2007", 
                "2008", 
                "2009", 
                "2010", 
                "2011", 
                "2012", 
                "2013", 
                "2014", 
                "2015", 
                "2016", 
                "2017", 
                "2018", 
                "2019", 
                "2020", 
                "2021", 
                "2022", 
                "2023", 
                "2024", 
                "2025", 
                "2026", 
                "2027", 
                "2028", 
                "2029", 
                "2030", 
                "2031", 
                "2032", 
                "2033", 
                "2034", 
                "2035", 
                "2036", 
                "2037", 
                "2038", 
                "2039", 
                "2040", 
                "2041", 
                "2042", 
                "2043", 
                "2044", 
                "2045", 
                "2046", 
                "2047", 
                "2048", 
                "2049", 
                "2050", 
                "2051", 
                "2052", 
                "2053", 
                "2054", 
                "2055", 
                "2056", 
                "2057", 
                "2058", 
                "2059", 
                "2060", 
                "2061", 
                "2062", 
                "2063", 
                "2064", 
                "2065", 
                "2066", 
                "2067", 
                "2068", 
                "2069", 
                "2070", 
                "2071", 
                "2072", 
                "2073", 
                "2074", 
                "2075", 
                "2076", 
                "2077", 
                "2078", 
                "2079", 
                "2080", 
                "2081", 
                "2082", 
                "2083", 
                "2084", 
                "2085", 
                "2086", 
                "2087", 
                "2088", 
                "2089", 
                "2090", 
                "2091", 
                "2092", 
                "2093", 
                "2094", 
                "2095", 
                "2096", 
                "2097", 
                "2098", 
                "2099"
            })
            Name (VR02, Package (0x0D)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12"
            })
            Name (VR03, Package (0x20)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12", 
                "13", 
                "14", 
                "15", 
                "16", 
                "17", 
                "18", 
                "19", 
                "20", 
                "21", 
                "22", 
                "23", 
                "24", 
                "25", 
                "26", 
                "27", 
                "28", 
                "29", 
                "30", 
                "31"
            })
            Name (VR04, Package (0x18)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12", 
                "13", 
                "14", 
                "15", 
                "16", 
                "17", 
                "18", 
                "19", 
                "20", 
                "21", 
                "22", 
                "23"
            })
            Name (VR05, Package (0x3C)
            {
                "00", 
                "01", 
                "02", 
                "03", 
                "04", 
                "05", 
                "06", 
                "07", 
                "08", 
                "09", 
                "10", 
                "11", 
                "12", 
                "13", 
                "14", 
                "15", 
                "16", 
                "17", 
                "18", 
                "19", 
                "20", 
                "21", 
                "22", 
                "23", 
                "24", 
                "25", 
                "26", 
                "27", 
                "28", 
                "29", 
                "30", 
                "31", 
                "32", 
                "33", 
                "34", 
                "35", 
                "36", 
                "37", 
                "38", 
                "39", 
                "40", 
                "41", 
                "42", 
                "43", 
                "44", 
                "45", 
                "46", 
                "47", 
                "48", 
                "49", 
                "50", 
                "51", 
                "52", 
                "53", 
                "54", 
                "55", 
                "56", 
                "57", 
                "58", 
                "59"
            })
            Name (PENC, Package (0x02)
            {
                "ascii", 
                "scancode"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x0B)
            {
                "pap", 
                "pop", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3", 
                "uhdp4", 
                "mhdp4", 
                "smp"
            })
            Name (OPCD, Package (0x0E)
            {
                "WmiOpcodePasswordType", 
                "WmiOpcodePasswordCurrent01", 
                "WmiOpcodePasswordCurrent02", 
                "WmiOpcodePasswordCurrent03", 
                "WmiOpcodePasswordCurrent04", 
                "WmiOpcodePasswordNew01", 
                "WmiOpcodePasswordNew02", 
                "WmiOpcodePasswordNew03", 
                "WmiOpcodePasswordNew04", 
                "WmiOpcodePasswordEncode", 
                "WmiOpcodePasswordSetUpdate", 
                "WmiOpcodePasswordAdmin", 
                "WmiOpcodeTPM", 
                "WmiOpcodePasswordFree"
            })
            Mutex (MWMI, 0x00)
            Name (PCFG, Buffer (0x18){})
            Name (IBUF, Buffer (0x0100){})
            Name (ILEN, 0x00)
            Name (PSTR, Buffer (0x81){})
            Name (ALEN, 0x00)
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LNotEqual (WMIS (0x00, Arg0), 0x00))
                {
                    Release (MWMI)
                    Return ("")
                }

                Store (DerefOf (Index (ITEM, WITM)), Local0)
                Store (DerefOf (Index (Local0, 0x00)), Local1)
                Store (DerefOf (Index (Local0, 0x01)), Local2)
                If (LEqual (Local1, 0x1D))
                {
                    Concatenate (Local2, ",", Local6)
                    Concatenate (Local6, DerefOf (Index (VR02, RTC1)), Local7)
                    Concatenate (Local7, "/", Local6)
                    Concatenate (Local6, DerefOf (Index (VR03, RTC2)), Local7)
                    Concatenate (Local7, "/", Local6)
                    Concatenate (Local6, DerefOf (Index (VR01, RTC0)), Local7)
                }
                ElseIf (LEqual (Local1, 0x1E))
                {
                    Concatenate (Local2, ",", Local6)
                    Concatenate (Local6, DerefOf (Index (VR04, RTC0)), Local7)
                    Concatenate (Local7, ":", Local6)
                    Concatenate (Local6, DerefOf (Index (VR05, RTC1)), Local7)
                    Concatenate (Local7, ":", Local6)
                    Concatenate (Local6, DerefOf (Index (VR05, RTC2)), Local7)
                }
                ElseIf (LLess (Local1, 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    Store (DerefOf (Index (VSEL, Local1)), Local3)
                    Concatenate (Local6, DerefOf (Index (Local3, WSEL)), Local7)
                }
                Else
                {
                    Store (SizeOf (VLST), Local3)
                    If (LLessEqual (WLS0, Local3))
                    {
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS0)), Local2)
                    }

                    If (LLessEqual (WLS1, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS1)), Local2)
                    }

                    If (LLessEqual (WLS2, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS2)), Local2)
                    }

                    If (LLessEqual (WLS3, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS3)), Local2)
                    }

                    If (LLessEqual (WLS4, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS4)), Local2)
                    }

                    If (LLessEqual (WLS5, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS5)), Local2)
                    }

                    If (LLessEqual (WLS6, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS6)), Local2)
                    }

                    If (LLessEqual (WLS7, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS7)), Local2)
                    }

                    If (LLessEqual (WLS8, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS8)), Local2)
                    }

                    If (LLessEqual (WLS9, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLS9)), Local2)
                    }

                    If (LLessEqual (WLSA, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSA)), Local2)
                    }

                    If (LLessEqual (WLSB, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSB)), Local2)
                    }

                    If (LLessEqual (WLSC, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSC)), Local2)
                    }

                    If (LLessEqual (WLSD, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, WLSD)), Local2)
                    }

                    Store (Local2, Local7)
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        Store (WSET (ITEM, VSEL), Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Store (WMIS (0x01, 0x00), Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (WMIS (0x02, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (WMIS (0x03, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (WMIS (0x04, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (WMIS (0x05, 0x00), Local0)
                Store (WSPM, Index (PCFG, 0x00))
                Store (WSPS, Index (PCFG, 0x04))
                Store (WSMN, Index (PCFG, 0x08))
                Store (WSMX, Index (PCFG, 0x0C))
                Store (WSEN, Index (PCFG, 0x10))
                Store (WSKB, Index (PCFG, 0x14))
                Release (MWMI)
                Return (PCFG)
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        If (LNotEqual (ILEN, 0x00))
                        {
                            Store (SPAS (IBUF), Local0)
                        }

                        If (LEqual (Local0, 0x00))
                        {
                            Store (WMIS (0x06, 0x00), Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA7, 3, NotSerialized)
            {
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Return ("")
                }

                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Store (GITM (IBUF, ITEM), Local1)
                    If (LEqual (Local1, Ones))
                    {
                        Return ("")
                    }

                    Store (DerefOf (Index (ITEM, Local1)), Local0)
                    Store (DerefOf (Index (Local0, 0x00)), Local1)
                    If (LLess (Local1, 0x64))
                    {
                        Store (DerefOf (Index (VSEL, Local1)), Local3)
                        Store (DerefOf (Index (Local3, 0x00)), Local2)
                        Store (SizeOf (Local3), Local4)
                        Store (0x01, Local5)
                        While (LLess (Local5, Local4))
                        {
                            Store (DerefOf (Index (Local3, Local5)), Local6)
                            If (LNotEqual (SizeOf (Local6), 0x00))
                            {
                                Concatenate (Local2, ",", Local7)
                                Concatenate (Local7, Local6, Local2)
                            }

                            Increment (Local5)
                        }
                    }
                    Else
                    {
                        Store (DerefOf (Index (VLST, 0x00)), Local2)
                        Store (SizeOf (VLST), Local4)
                        Store (0x01, Local5)
                        While (LLess (Local5, Local4))
                        {
                            Store (DerefOf (Index (VLST, Local5)), Local6)
                            Concatenate (Local2, ",", Local7)
                            Concatenate (Local7, Local6, Local2)
                            Increment (Local5)
                        }
                    }
                }

                Return (Local2)
            }

            Method (WMC0, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        Store (GSEL (OPCD, IBUF, 0x00), Local6)
                        If (LNotEqual (Local6, Ones))
                        {
                            Store (DerefOf (Index (OPCD, Local6)), Local4)
                            Store (SizeOf (Local4), Local2)
                            Store (DerefOf (Index (IBUF, Local2)), Local3)
                            If (LOr (LEqual (Local3, 0x2C), LEqual (Local3, 0x3A)))
                            {
                                Increment (Local2)
                            }

                            Subtract (SizeOf (Arg2), Local2, Local5)
                            Store (0x00, Local0)
                            If (LEqual (Local6, 0x00))
                            {
                                Store (0xFF, WPTY)
                                Store (GSEL (PTYP, IBUF, Local2), Local7)
                                If (LNotEqual (Local7, Ones))
                                {
                                    Store (Local7, WPTY)
                                }
                                Else
                                {
                                    Store (0x02, Local0)
                                }
                            }
                            ElseIf (LEqual (Local6, 0x01))
                            {
                                Store (0x00, PSTR)
                                Store (GPAO (IBUF, Local2), Local1)
                                If (LEqual (Local1, Ones))
                                {
                                    Store (0x02, Local0)
                                }

                                If (LEqual (Local0, 0x00))
                                {
                                    Store (PSTR, WPAS)
                                }
                            }
                            ElseIf (LEqual (Local6, 0x05))
                            {
                                Store (0x00, PSTR)
                                Store (GPAO (IBUF, Local2), Local1)
                                If (LEqual (Local1, Ones))
                                {
                                    Store (0x02, Local0)
                                }

                                If (LEqual (Local1, 0x00))
                                {
                                    Store (0x00, PSTR)
                                }

                                If (LEqual (Local0, 0x00))
                                {
                                    Store (PSTR, WPNW)
                                }
                            }
                            ElseIf (LEqual (Local6, 0x0A))
                            {
                                Store (0x00, Local0)
                            }
                            ElseIf (LEqual (Local6, 0x0B))
                            {
                                Store (0x00, PSTR)
                                Store (GPAO (IBUF, Local2), Local1)
                                If (LEqual (Local1, Ones))
                                {
                                    Store (0x02, Local0)
                                }

                                If (LEqual (Local1, 0x00))
                                {
                                    Store (0x02, Local0)
                                }

                                If (LEqual (Local0, 0x00))
                                {
                                    Store (PSTR, WPAS)
                                }
                            }
                            Else
                            {
                                Store (0x02, Local0)
                            }

                            If (LEqual (Local0, 0x00))
                            {
                                Store (WMIS (0x0F, Local6), Local0)
                            }
                        }
                        Else
                        {
                            Store (0x02, Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (CARG, 1, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Store (0x00, IBUF)
                    Store (0x00, ILEN)
                    Return (0x00)
                }

                If (LNotEqual (ObjectType (Arg0), 0x02))
                {
                    Return (0x02)
                }

                If (LGreaterEqual (Local0, 0xFF))
                {
                    Return (0x02)
                }

                Store (Arg0, IBUF)
                Decrement (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local1)
                If (LOr (LEqual (Local1, 0x3B), LEqual (Local1, 0x2A)))
                {
                    Store (0x00, Index (IBUF, Local0))
                    Store (Local0, ILEN)
                }
                Else
                {
                    Store (SizeOf (Arg0), ILEN)
                }

                Return (0x00)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Return (0x00)
                }

                Increment (Local0)
                Name (STR1, Buffer (Local0){})
                Store (Arg0, STR1)
                Decrement (Local0)
                If (LNotEqual (ALEN, 0x00))
                {
                    Store (ALEN, Local0)
                }

                Store (0x00, Local1)
                Store (Arg2, Local2)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (STR1, Local1)), Local3)
                    Store (DerefOf (Index (Arg1, Local2)), Local4)
                    If (LNotEqual (Local3, Local4))
                    {
                        Return (0x00)
                    }

                    Increment (Local1)
                    Increment (Local2)
                }

                If (LNotEqual (ALEN, 0x00))
                {
                    Return (0x01)
                }

                Store (DerefOf (Index (Arg1, Local2)), Local4)
                If (LEqual (Local4, 0x00))
                {
                    Return (0x01)
                }

                If (LOr (LEqual (Local4, 0x2C), LEqual (Local4, 0x3A)))
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (GITM, 2, NotSerialized)
            {
                Store (0x00, Local0)
                Store (SizeOf (Arg1), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (DerefOf (Index (Arg1, Local0)), 0x01)), Local3)
                    If (SCMP (Local3, Arg0, 0x00))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Store (0x00, Local0)
                Store (SizeOf (Arg0), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Store (DerefOf (Index (Arg0, Arg1)), Local0)
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                Store (0x00, WPAS)
                Store (0x00, WPNW)
            }

            Method (GPAS, 2, NotSerialized)
            {
                Store (Arg1, Local0)
                Store (0x00, Local1)
                While (LLessEqual (Local1, 0x80))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (LOr (LEqual (Local2, 0x2C), LEqual (Local2, 0x00)))
                    {
                        Store (0x00, Index (PSTR, Local1))
                        Return (Local1)
                    }

                    Store (Local2, Index (PSTR, Local1))
                    Increment (Local0)
                    Increment (Local1)
                }

                Store (0x00, Index (PSTR, Local1))
                Return (Ones)
            }

            Method (GPAO, 2, NotSerialized)
            {
                Store (Arg1, Local0)
                Store (0x00, Local1)
                While (LLessEqual (Local1, 0x80))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (LEqual (Local2, 0x00))
                    {
                        Store (0x00, Index (PSTR, Local1))
                        Return (Local1)
                    }

                    Store (Local2, Index (PSTR, Local1))
                    Increment (Local0)
                    Increment (Local1)
                }

                Decrement (Local1)
                Store (0x00, Index (PSTR, Local1))
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                CLRP ()
                Store (Arg1, Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, 0x00))
                {
                    Return (0x02)
                }

                Store (PSTR, WPAS)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WENC)
                If (LEqual (Local6, 0x00))
                {
                    Add (Local0, SLEN (PENC, 0x00), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WKBD)
                }

                Return (0x00)
            }

            Method (SPAS, 1, NotSerialized)
            {
                CLRP ()
                Store (GSEL (PTYP, Arg0, 0x00), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WPTY)
                Store (SLEN (PTYP, Local6), Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LOr (LEqual (Local1, Ones), LEqual (Local1, 0x00)))
                {
                    Return (0x02)
                }

                Store (PSTR, WPAS)
                Add (Local0, Local1, Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, 0x00))
                {
                    Store (0x00, PSTR)
                }

                Store (PSTR, WPNW)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WENC)
                If (LEqual (Local6, 0x00))
                {
                    Add (Local0, SLEN (PENC, 0x00), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WKBD)
                }

                Return (0x00)
            }

            Method (WSET, 2, NotSerialized)
            {
                Store (ILEN, Local0)
                Increment (Local0)
                Store (GITM (IBUF, Arg0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                Store (Local1, WITM)
                Store (DerefOf (Index (Arg0, Local1)), Local3)
                Store (DerefOf (Index (Local3, 0x01)), Local4)
                Store (SizeOf (Local4), Local2)
                Increment (Local2)
                Store (DerefOf (Index (Local3, 0x00)), Local4)
                If (LEqual (Local4, 0x1D))
                {
                    If (LNotEqual (ALMD (Local2), 0x00))
                    {
                        Return (0x02)
                    }

                    Add (Local2, 0x0A, Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                }
                ElseIf (LEqual (Local4, 0x1E))
                {
                    If (LNotEqual (ALMT (Local2), 0x00))
                    {
                        Return (0x02)
                    }

                    Add (Local2, 0x08, Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                }
                ElseIf (LLess (Local4, 0x64))
                {
                    Store (DerefOf (Index (Arg1, Local4)), Local5)
                    Store (GSEL (Local5, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WSEL)
                    Add (Local2, SLEN (Local5, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                }
                Else
                {
                    Store (0x3F, WLS0)
                    Store (0x3F, WLS1)
                    Store (0x3F, WLS2)
                    Store (0x3F, WLS3)
                    Store (0x3F, WLS4)
                    Store (0x3F, WLS5)
                    Store (0x3F, WLS6)
                    Store (0x3F, WLS7)
                    Store (0x3F, WLS8)
                    Store (0x3F, WLS9)
                    Store (0x3F, WLSA)
                    Store (0x3F, WLSB)
                    Store (0x3F, WLSC)
                    Store (0x3F, WLSD)
                    Store (GSEL (VLST, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, WLS0)
                    Add (Local2, SLEN (VLST, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS1)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS2)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS3)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS4)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS5)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS6)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS7)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS8)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLS9)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSA)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSB)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSC)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, WLSD)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }
                }

                If (LAnd (LEqual (Local4, 0x2C), LLess (Local2, Local0)))
                {
                    Increment (Local2)
                    Store (CPAS (IBUF, Local2), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        Return (Local0)
                    }
                }

                Return (0x00)
            }

            Method (ALMD, 1, NotSerialized)
            {
                Store (Arg0, Local0)
                Store (VR02, Local1)
                Store (0x02, ALEN)
                Store (GSEL (Local1, IBUF, Local0), Local2)
                Store (0x00, ALEN)
                If (LEqual (Local2, Ones))
                {
                    Return (0x02)
                }

                Store (Local2, RTC1)
                Increment (Local0)
                Increment (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local3)
                If (LNotEqual (Local3, 0x2F))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (VR03, Local1)
                Store (0x02, ALEN)
                Store (GSEL (Local1, IBUF, Local0), Local2)
                Store (0x00, ALEN)
                If (LEqual (Local2, Ones))
                {
                    Return (0x02)
                }

                Store (Local2, RTC2)
                Increment (Local0)
                Increment (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local3)
                If (LNotEqual (Local3, 0x2F))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (VR01, Local1)
                Store (GSEL (Local1, IBUF, Local0), Local2)
                If (LEqual (Local2, Ones))
                {
                    Return (0x02)
                }

                Store (Local2, RTC0)
                Return (0x00)
            }

            Method (ALMT, 1, NotSerialized)
            {
                Store (Arg0, Local0)
                Store (VR04, Local1)
                Store (0x02, ALEN)
                Store (GSEL (Local1, IBUF, Local0), Local2)
                Store (0x00, ALEN)
                If (LEqual (Local2, Ones))
                {
                    Return (0x02)
                }

                Store (Local2, RTC0)
                Increment (Local0)
                Increment (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local3)
                If (LNotEqual (Local3, 0x3A))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (VR05, Local1)
                Store (0x02, ALEN)
                Store (GSEL (Local1, IBUF, Local0), Local2)
                Store (0x00, ALEN)
                If (LEqual (Local2, Ones))
                {
                    Return (0x02)
                }

                Store (Local2, RTC1)
                Increment (Local0)
                Increment (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local3)
                If (LNotEqual (Local3, 0x3A))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (VR05, Local1)
                Store (GSEL (Local1, IBUF, Local0), Local2)
                If (LEqual (Local2, Ones))
                {
                    Return (0x02)
                }

                Store (Local2, RTC2)
                Return (0x00)
            }

            Name (WQBA, Buffer (0x0944)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x34, 0x09, 0x00, 0x00, 0x94, 0x3D, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x18, 0xC4, 0x9D, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x15, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,
                /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,
                /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,
                /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,
                /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,
                /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,
                /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,
                /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x91, 0x00,
                /* 00A8 */  0xC2, 0x62, 0x2C, 0x53, 0xE2, 0x61, 0x50, 0x1E,
                /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,
                /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,
                /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,
                /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,
                /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,
                /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,
                /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,
                /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,
                /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,
                /* 00F8 */  0x1E, 0xCD, 0x31, 0x63, 0x81, 0xC2, 0x05, 0x3C,
                /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,
                /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,
                /* 0110 */  0xD0, 0xBC, 0x85, 0x18, 0x2C, 0x9A, 0xC1, 0x7A,
                /* 0118 */  0x06, 0x27, 0x83, 0x4E, 0xF0, 0xFF, 0x3F, 0x02,
                /* 0120 */  0x2E, 0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x94,
                /* 0128 */  0xA6, 0x61, 0x82, 0xEE, 0x05, 0x58, 0x13, 0x60,
                /* 0130 */  0x4C, 0x80, 0x46, 0x0C, 0x29, 0x13, 0xE0, 0xEC,
                /* 0138 */  0xBE, 0xA0, 0x19, 0xB5, 0x25, 0xC0, 0x9C, 0x00,
                /* 0140 */  0x6D, 0x02, 0xBC, 0x21, 0x08, 0xE5, 0x3C, 0xA3,
                /* 0148 */  0x1C, 0xCB, 0x29, 0x46, 0x79, 0x18, 0x88, 0xF9,
                /* 0150 */  0x32, 0x10, 0x34, 0x4A, 0x8C, 0x98, 0xE7, 0x12,
                /* 0158 */  0xD7, 0xB0, 0x11, 0x62, 0x84, 0x3C, 0x85, 0x40,
                /* 0160 */  0x71, 0xDB, 0x1F, 0x04, 0x19, 0x34, 0x6E, 0xF4,
                /* 0168 */  0x3E, 0x2D, 0x9C, 0xD5, 0x09, 0x1C, 0xFD, 0x93,
                /* 0170 */  0x82, 0x09, 0x3C, 0xE5, 0x03, 0x7B, 0x36, 0x38,
                /* 0178 */  0x81, 0x63, 0x8D, 0x1A, 0xE3, 0x54, 0x12, 0x38,
                /* 0180 */  0xF6, 0x03, 0x42, 0x1A, 0x40, 0x14, 0x09, 0x1E,
                /* 0188 */  0x75, 0x5A, 0xF0, 0xB9, 0xC0, 0x43, 0x3B, 0x68,
                /* 0190 */  0xCF, 0xF1, 0x04, 0x82, 0x1C, 0xC2, 0x11, 0x3C,
                /* 0198 */  0x31, 0x3C, 0x10, 0x78, 0x0C, 0xEC, 0xA6, 0xE0,
                /* 01A0 */  0x23, 0x80, 0x4F, 0x08, 0x78, 0xD7, 0x80, 0xBA,
                /* 01A8 */  0x1A, 0x3C, 0x18, 0xB0, 0x41, 0x87, 0xC3, 0x8C,
                /* 01B0 */  0xD7, 0xC3, 0x0F, 0x77, 0x02, 0x27, 0xF9, 0x80,
                /* 01B8 */  0xC1, 0x0F, 0x1B, 0x1E, 0x1C, 0x6E, 0x9E, 0x27,
                /* 01C0 */  0x73, 0x64, 0xA5, 0x0A, 0x30, 0x7B, 0x38, 0xD0,
                /* 01C8 */  0x41, 0xC2, 0xA7, 0x0D, 0x76, 0x06, 0xC0, 0xC8,
                /* 01D0 */  0x1F, 0x04, 0x6A, 0x64, 0x86, 0xF6, 0xB8, 0x5F,
                /* 01D8 */  0x3A, 0x0C, 0xF9, 0x9C, 0x70, 0x58, 0x4C, 0xEC,
                /* 01E0 */  0xA9, 0x83, 0x8E, 0x07, 0xFC, 0x97, 0x91, 0xE7,
                /* 01E8 */  0x0C, 0x4F, 0xDF, 0xF3, 0x35, 0xC1, 0xB0, 0x03,
                /* 01F0 */  0x47, 0x0F, 0xC4, 0xD0, 0x0F, 0x1B, 0x87, 0x71,
                /* 01F8 */  0x1A, 0xBE, 0x7F, 0xF8, 0xBC, 0x00, 0xE3, 0x14,
                /* 0200 */  0xE0, 0x91, 0xFB, 0xFF, 0x7F, 0x48, 0xF1, 0x69,
                /* 0208 */  0x82, 0x1F, 0x2D, 0x7C, 0x9A, 0x60, 0xD7, 0x83,
                /* 0210 */  0xD3, 0x78, 0x0E, 0xF0, 0x70, 0xCE, 0xCA, 0x87,
                /* 0218 */  0x09, 0xB0, 0xDD, 0x4F, 0xD8, 0x88, 0xDE, 0x2D,
                /* 0220 */  0x3C, 0x1A, 0xEC, 0x29, 0x00, 0x7C, 0xE7, 0x17,
                /* 0228 */  0x70, 0xDE, 0x35, 0xD8, 0x60, 0x61, 0x9C, 0x5F,
                /* 0230 */  0x80, 0xC7, 0x09, 0xC1, 0x43, 0xE0, 0x07, 0x09,
                /* 0238 */  0x0F, 0x81, 0x0F, 0xE0, 0xF9, 0xE3, 0x0C, 0xAD,
                /* 0240 */  0x74, 0x5E, 0xC8, 0x81, 0xC1, 0x3B, 0xE7, 0xC0,
                /* 0248 */  0x18, 0x05, 0xCF, 0xF3, 0xD8, 0x30, 0x81, 0x82,
                /* 0250 */  0xBC, 0x06, 0x14, 0xEA, 0x59, 0x40, 0x61, 0x7C,
                /* 0258 */  0xAA, 0x01, 0x5E, 0xFF, 0xFF, 0x53, 0x0D, 0x70,
                /* 0260 */  0x39, 0x1C, 0xE0, 0x4E, 0x0E, 0x70, 0xEF, 0x05,
                /* 0268 */  0xEC, 0xE2, 0xF0, 0x5C, 0x03, 0x57, 0xF4, 0xB9,
                /* 0270 */  0x06, 0xEA, 0xBD, 0xA5, 0xB8, 0x31, 0xEA, 0x1A,
                /* 0278 */  0x13, 0xE4, 0x51, 0xE0, 0x91, 0x26, 0xCA, 0xF3,
                /* 0280 */  0xCC, 0xBB, 0x4C, 0x84, 0x67, 0x1B, 0x5F, 0x6B,
                /* 0288 */  0x3C, 0x85, 0x38, 0xBE, 0xD6, 0x18, 0xF1, 0x65,
                /* 0290 */  0xE2, 0xDD, 0xC6, 0xB8, 0x07, 0xF7, 0x58, 0xF3,
                /* 0298 */  0x90, 0x63, 0x90, 0xA3, 0x89, 0xF0, 0x62, 0x10,
                /* 02A0 */  0xF0, 0xF1, 0xC6, 0xC7, 0x1A, 0xF0, 0x8A, 0x79,
                /* 02A8 */  0xA1, 0xC8, 0xC2, 0xB1, 0x06, 0xD0, 0xF8, 0xFF,
                /* 02B0 */  0x3F, 0xD6, 0x00, 0x37, 0xAC, 0x07, 0x14, 0xF0,
                /* 02B8 */  0x1D, 0x19, 0xD8, 0x0D, 0x05, 0xDE, 0x09, 0x05,
                /* 02C0 */  0xF0, 0x93, 0xF8, 0x05, 0xA0, 0x23, 0x87, 0xD3,
                /* 02C8 */  0x82, 0xC8, 0xC6, 0x1B, 0xC0, 0xA7, 0x00, 0xAA,
                /* 02D0 */  0x06, 0x48, 0xD3, 0x84, 0x4D, 0x30, 0x3D, 0xB9,
                /* 02D8 */  0xE0, 0x7D, 0x24, 0x70, 0x6E, 0x12, 0x25, 0x1F,
                /* 02E0 */  0x16, 0x85, 0x73, 0xD6, 0x83, 0x08, 0x05, 0x31,
                /* 02E8 */  0xA0, 0x83, 0x1C, 0x27, 0xD0, 0x67, 0x14, 0x1F,
                /* 02F0 */  0x44, 0x4E, 0xF4, 0x89, 0xD0, 0x83, 0xF2, 0x30,
                /* 02F8 */  0xDE, 0x51, 0xD8, 0x09, 0xC4, 0x87, 0x09, 0x8F,
                /* 0300 */  0xDD, 0xC7, 0x04, 0xFE, 0x8F, 0xF1, 0x6C, 0x8C,
                /* 0308 */  0x6E, 0x35, 0x18, 0xFA, 0xFF, 0x9F, 0x53, 0x38,
                /* 0310 */  0x98, 0x0F, 0x22, 0x9C, 0xA0, 0xAE, 0x9B, 0x04,
                /* 0318 */  0xC8, 0xF4, 0x1D, 0x15, 0x40, 0x01, 0xE4, 0x7B,
                /* 0320 */  0x81, 0xCF, 0x01, 0xCF, 0x06, 0x6C, 0x0C, 0x8F,
                /* 0328 */  0x02, 0x46, 0x33, 0x3A, 0x0F, 0x3F, 0x59, 0x54,
                /* 0330 */  0xDC, 0xC9, 0x52, 0x10, 0x4F, 0xD6, 0x51, 0x26,
                /* 0338 */  0x8B, 0x9E, 0x89, 0xEF, 0x15, 0x9E, 0xD1, 0x9B,
                /* 0340 */  0x96, 0xE7, 0xE8, 0x09, 0xFB, 0x1E, 0x02, 0xEB,
                /* 0348 */  0x30, 0x10, 0xF2, 0xC1, 0xC0, 0xD3, 0x30, 0x9C,
                /* 0350 */  0x27, 0xCB, 0xE1, 0x3C, 0x59, 0x3E, 0x16, 0x5F,
                /* 0358 */  0x43, 0xC0, 0x27, 0x70, 0xB6, 0x20, 0x87, 0xC7,
                /* 0360 */  0xC4, 0x1A, 0x15, 0xBD, 0x0A, 0x79, 0x78, 0xFC,
                /* 0368 */  0x72, 0xE0, 0xF9, 0x3C, 0x23, 0x1C, 0xE5, 0x93,
                /* 0370 */  0x04, 0x0E, 0xE3, 0x99, 0xC4, 0x43, 0xF4, 0xAD,
                /* 0378 */  0x08, 0xD6, 0x44, 0x4E, 0xDA, 0xB7, 0x85, 0x93,
                /* 0380 */  0x0D, 0xFA, 0x7A, 0x86, 0xB9, 0x15, 0xC1, 0xFE,
                /* 0388 */  0xFF, 0xDF, 0x8A, 0xE0, 0x5C, 0xD0, 0x60, 0x66,
                /* 0390 */  0xBA, 0x57, 0xA1, 0x62, 0xDD, 0xAB, 0x00, 0xB1,
                /* 0398 */  0xC3, 0x7A, 0xED, 0xF1, 0xC1, 0x0A, 0xEE, 0xBD,
                /* 03A0 */  0x0A, 0xEE, 0xA5, 0xEA, 0x59, 0xE1, 0x18, 0xC3,
                /* 03A8 */  0x3F, 0x4C, 0xC5, 0x38, 0xA5, 0xD7, 0x4E, 0x03,
                /* 03B0 */  0x85, 0x89, 0x12, 0xEF, 0xBD, 0xCA, 0x63, 0x7C,
                /* 03B8 */  0xAF, 0x62, 0x57, 0xA8, 0x30, 0xB1, 0x5E, 0xAE,
                /* 03C0 */  0x8C, 0xFA, 0x3A, 0x11, 0x2E, 0x50, 0x90, 0x48,
                /* 03C8 */  0xAF, 0x56, 0x51, 0x22, 0xC7, 0x37, 0xE4, 0x7B,
                /* 03D0 */  0x15, 0x78, 0xE5, 0xDC, 0xAB, 0x40, 0xF6, 0xFF,
                /* 03D8 */  0xBF, 0x57, 0x01, 0xE6, 0xD1, 0xDE, 0xAB, 0xC0,
                /* 03E0 */  0x78, 0x6D, 0x60, 0x37, 0x24, 0x58, 0x40, 0x2F,
                /* 03E8 */  0x56, 0x80, 0xA1, 0xCC, 0x17, 0x2B, 0x9A, 0xF7,
                /* 03F0 */  0x62, 0x85, 0xF8, 0xFF, 0x9F, 0x4B, 0x98, 0x9E,
                /* 03F8 */  0x8B, 0x15, 0x99, 0x27, 0xFC, 0x9B, 0x15, 0xC0,
                /* 0400 */  0xE9, 0xFF, 0xFF, 0xCD, 0x0A, 0x30, 0x76, 0x2F,
                /* 0408 */  0xC2, 0x1C, 0xAD, 0xE0, 0xA5, 0xBC, 0x59, 0xD1,
                /* 0410 */  0x38, 0xCB, 0x50, 0xC0, 0x05, 0x51, 0x18, 0xDF,
                /* 0418 */  0xAC, 0x00, 0x47, 0xD7, 0x15, 0xDC, 0x90, 0xE1,
                /* 0420 */  0x82, 0x45, 0x09, 0xE6, 0x43, 0x88, 0xA7, 0x73,
                /* 0428 */  0xC4, 0x0F, 0x09, 0x2F, 0x01, 0x8F, 0x39, 0x1E,
                /* 0430 */  0xF0, 0x03, 0x81, 0x2F, 0x57, 0x60, 0xFA, 0xFF,
                /* 0438 */  0x13, 0xF8, 0xE4, 0x7B, 0x96, 0x6F, 0x53, 0xEF,
                /* 0440 */  0xBD, 0xFC, 0x80, 0xF5, 0x5E, 0xE5, 0xC3, 0x6F,
                /* 0448 */  0xAC, 0x77, 0x86, 0x97, 0x2B, 0x8F, 0x24, 0xCA,
                /* 0450 */  0x49, 0x84, 0xF2, 0xDD, 0xEA, 0xBD, 0xCA, 0x28,
                /* 0458 */  0x11, 0x5F, 0x88, 0x7D, 0x0A, 0x36, 0xB4, 0x51,
                /* 0460 */  0x9E, 0x2A, 0xA2, 0x1B, 0xEF, 0xE5, 0x0A, 0xBC,
                /* 0468 */  0x92, 0x2E, 0x57, 0x00, 0x4D, 0x86, 0xFF, 0x72,
                /* 0470 */  0x05, 0xBE, 0x9B, 0x03, 0xF6, 0x9A, 0x04, 0xE7,
                /* 0478 */  0xFF, 0x7F, 0x4D, 0xE2, 0xD7, 0x2B, 0xC0, 0x4F,
                /* 0480 */  0xF6, 0xEB, 0x15, 0xCD, 0x7D, 0xBD, 0x42, 0x89,
                /* 0488 */  0x82, 0x90, 0x22, 0x20, 0xCD, 0x14, 0x3C, 0xF7,
                /* 0490 */  0x2B, 0x80, 0x13, 0xFF, 0xFF, 0xFB, 0x15, 0x60,
                /* 0498 */  0x39, 0xDC, 0xFD, 0x0A, 0xE8, 0xDD, 0x8E, 0xC0,
                /* 04A0 */  0x8B, 0xF2, 0x76, 0x84, 0xBD, 0x62, 0xE1, 0x33,
                /* 04A8 */  0x5E, 0xB1, 0x68, 0x98, 0x95, 0x28, 0xDE, 0x9A,
                /* 04B0 */  0x28, 0x8C, 0xAF, 0x58, 0xC0, 0xE4, 0xFF, 0x7F,
                /* 04B8 */  0xC5, 0x02, 0x66, 0x07, 0x51, 0xDC, 0xA8, 0xE1,
                /* 04C0 */  0x5E, 0x9C, 0x7C, 0xEB, 0xF1, 0x7C, 0x23, 0xFA,
                /* 04C8 */  0x0E, 0x83, 0x39, 0x61, 0xC1, 0xB8, 0x61, 0xC1,
                /* 04D0 */  0x1F, 0xD2, 0xC3, 0xB0, 0x4F, 0x12, 0xEF, 0x58,
                /* 04D8 */  0x3E, 0x5A, 0x19, 0xE4, 0x0D, 0xF8, 0xC9, 0xEA,
                /* 04E0 */  0xC1, 0x2A, 0x8A, 0x11, 0x02, 0x1E, 0xCF, 0xBB,
                /* 04E8 */  0xB0, 0x8F, 0x56, 0x6F, 0x5A, 0x46, 0x89, 0x1D,
                /* 04F0 */  0xCB, 0x17, 0xAA, 0x67, 0x2D, 0x5F, 0xB3, 0x0C,
                /* 04F8 */  0x11, 0xF7, 0x81, 0xD8, 0x37, 0x2C, 0xC0, 0xF6,
                /* 0500 */  0xFF, 0xFF, 0x86, 0x05, 0x38, 0xBA, 0x38, 0xF0,
                /* 0508 */  0x83, 0x03, 0xF6, 0x86, 0x05, 0xF8, 0x9C, 0x29,
                /* 0510 */  0x78, 0x6E, 0x58, 0xC0, 0xE6, 0xFF, 0x7F, 0xC3,
                /* 0518 */  0x02, 0xF8, 0xFF, 0xFF, 0xBF, 0x61, 0x01, 0x87,
                /* 0520 */  0xDB, 0x15, 0xF6, 0x96, 0x85, 0xBD, 0xBD, 0x90,
                /* 0528 */  0x55, 0xD0, 0x50, 0x2B, 0x51, 0xF0, 0xEF, 0x95,
                /* 0530 */  0x61, 0xE8, 0x0D, 0x0B, 0x70, 0x34, 0x6E, 0x8F,
                /* 0538 */  0x1A, 0x1C, 0x67, 0x83, 0x27, 0x09, 0xCC, 0xB9,
                /* 0540 */  0x1A, 0x37, 0x9B, 0x83, 0x0B, 0x1C, 0xA1, 0x77,
                /* 0548 */  0x50, 0xCD, 0x9D, 0x5D, 0x52, 0x60, 0xDC, 0xB2,
                /* 0550 */  0xE0, 0x5E, 0xAA, 0x1E, 0x1A, 0xA2, 0x1C, 0xC4,
                /* 0558 */  0xAB, 0xF0, 0x83, 0xD5, 0xA3, 0xD4, 0x91, 0x3D,
                /* 0560 */  0x5E, 0x3D, 0x0D, 0xFB, 0x98, 0xE5, 0x5B, 0x96,
                /* 0568 */  0xA1, 0x22, 0xBC, 0x65, 0xB1, 0x33, 0x44, 0xBC,
                /* 0570 */  0x58, 0x51, 0x42, 0xBC, 0x57, 0x84, 0xF6, 0x9D,
                /* 0578 */  0xCB, 0xE0, 0x8F, 0xC6, 0x46, 0x0D, 0xFA, 0x72,
                /* 0580 */  0xFC, 0x96, 0x05, 0xEF, 0xFF, 0x7F, 0xCB, 0x82,
                /* 0588 */  0x2F, 0xF2, 0xAF, 0xA2, 0x13, 0x81, 0x6F, 0x59,
                /* 0590 */  0x00, 0x3F, 0x82, 0x41, 0xC8, 0xC9, 0xC0, 0xD1,
                /* 0598 */  0xE7, 0x05, 0xFC, 0x00, 0x1E, 0x46, 0x3C, 0x24,
                /* 05A0 */  0x16, 0x60, 0xE0, 0xF4, 0xBE, 0xE4, 0x33, 0x05,
                /* 05A8 */  0x3F, 0x60, 0xF8, 0x4C, 0xC1, 0xAE, 0x07, 0xD1,
                /* 05B0 */  0x1F, 0x03, 0x7C, 0x2E, 0xC1, 0x0C, 0x0E, 0xFC,
                /* 05B8 */  0xD7, 0x8A, 0x43, 0xF7, 0x28, 0x5E, 0x1F, 0x4C,
                /* 05C0 */  0xE0, 0xC1, 0xF1, 0xFF, 0xFF, 0xE0, 0xE0, 0xDE,
                /* 05C8 */  0x19, 0x8E, 0xC8, 0x77, 0x18, 0x0F, 0x0E, 0x6C,
                /* 05D0 */  0x07, 0x01, 0xE0, 0x30, 0x38, 0x7C, 0xA8, 0xC1,
                /* 05D8 */  0xA1, 0xC7, 0x63, 0xE0, 0x90, 0x3E, 0x8F, 0xB1,
                /* 05E0 */  0x0B, 0xC3, 0x43, 0x8E, 0x87, 0x06, 0x36, 0x40,
                /* 05E8 */  0x0F, 0x0D, 0x58, 0x4E, 0xE2, 0x29, 0xE4, 0xD0,
                /* 05F0 */  0xC0, 0x2C, 0x61, 0x68, 0x40, 0x29, 0xDE, 0xD0,
                /* 05F8 */  0xE8, 0xFF, 0x7F, 0x68, 0x7C, 0x48, 0x3E, 0x2C,
                /* 0600 */  0xC4, 0x7C, 0xCA, 0x89, 0xF0, 0xBE, 0xE0, 0x13,
                /* 0608 */  0x14, 0x43, 0x7F, 0x4D, 0xF1, 0xED, 0xC2, 0x37,
                /* 0610 */  0x41, 0xDC, 0xF8, 0xC0, 0x75, 0xE9, 0xF4, 0xF8,
                /* 0618 */  0x80, 0xCF, 0x91, 0xCB, 0xE3, 0xC3, 0x1D, 0x9D,
                /* 0620 */  0x3C, 0x3E, 0x18, 0x2E, 0xAF, 0x32, 0xE4, 0x68,
                /* 0628 */  0xE2, 0xA3, 0x15, 0x1B, 0x1E, 0xD8, 0x6E, 0x7A,
                /* 0630 */  0x1E, 0x1E, 0xF0, 0xB9, 0x6E, 0x82, 0xF1, 0x0A,
                /* 0638 */  0xC9, 0xAF, 0x25, 0x30, 0x4E, 0x50, 0xF8, 0xEB,
                /* 0640 */  0x26, 0x78, 0xFF, 0xFF, 0xD7, 0x4D, 0xE0, 0x39,
                /* 0648 */  0x0A, 0xAE, 0xF5, 0x92, 0x4D, 0x83, 0xBC, 0x72,
                /* 0650 */  0x14, 0xEB, 0x45, 0x40, 0x61, 0x7C, 0x66, 0x03,
                /* 0658 */  0x1C, 0x8D, 0xF5, 0x99, 0x0D, 0x2C, 0xF7, 0x02,
                /* 0660 */  0x76, 0x63, 0x83, 0x7B, 0x5A, 0x83, 0x7D, 0x77,
                /* 0668 */  0x78, 0x38, 0x7B, 0x4C, 0x7B, 0x54, 0x7B, 0x40,
                /* 0670 */  0xF3, 0x11, 0x3B, 0xC6, 0x5B, 0x5A, 0x90, 0x38,
                /* 0678 */  0x11, 0x5E, 0x07, 0x9E, 0xD6, 0x7C, 0xC9, 0x88,
                /* 0680 */  0x17, 0xE8, 0x69, 0xCD, 0x18, 0x71, 0x5E, 0xDA,
                /* 0688 */  0x8C, 0xF8, 0x4A, 0x11, 0xE2, 0x61, 0xCD, 0x27,
                /* 0690 */  0x37, 0xE3, 0x3D, 0x4C, 0x84, 0x0B, 0xF3, 0xC2,
                /* 0698 */  0xF6, 0xB4, 0x06, 0x8E, 0xFF, 0xFF, 0x69, 0x0D,
                /* 06A0 */  0x8E, 0x9C, 0x2B, 0x36, 0x40, 0x93, 0x8B, 0x3E,
                /* 06A8 */  0xEE, 0x90, 0x02, 0x96, 0x6B, 0x03, 0xBB, 0xA5,
                /* 06B0 */  0xC0, 0xBB, 0x60, 0x03, 0xE7, 0xFF, 0xFF, 0x11,
                /* 06B8 */  0x05, 0x7C, 0x59, 0x2E, 0xD8, 0x34, 0xC7, 0x05,
                /* 06C0 */  0x1B, 0xC5, 0x61, 0x35, 0x40, 0x9A, 0x27, 0xFC,
                /* 06C8 */  0xEB, 0x35, 0xF8, 0x27, 0xE1, 0xEB, 0x35, 0x60,
                /* 06D0 */  0xFB, 0x16, 0x8B, 0xBB, 0x5E, 0x03, 0xAB, 0xFF,
                /* 06D8 */  0xFF, 0xF5, 0x1A, 0x58, 0x0A, 0x1E, 0x29, 0xBD,
                /* 06E0 */  0x53, 0x83, 0xEB, 0xA6, 0x8D, 0x07, 0x7D, 0xD3,
                /* 06E8 */  0x86, 0x29, 0xF8, 0x16, 0x45, 0xA3, 0x90, 0x2B,
                /* 06F0 */  0xDA, 0x42, 0x28, 0x8C, 0x6F, 0x51, 0x80, 0x23,
                /* 06F8 */  0xEC, 0xB7, 0x28, 0xB0, 0x5C, 0x9C, 0xDE, 0xA2,
                /* 0700 */  0xF0, 0x33, 0xF0, 0xA0, 0x7D, 0xD7, 0x61, 0x98,
                /* 0708 */  0xBE, 0x43, 0xC3, 0x3F, 0x35, 0x3D, 0x37, 0x3D,
                /* 0710 */  0x38, 0x3D, 0x34, 0xFB, 0x20, 0xE5, 0xC3, 0xC1,
                /* 0718 */  0xF3, 0xD3, 0xFF, 0x3F, 0xC6, 0x7B, 0x9D, 0x6F,
                /* 0720 */  0x52, 0xAF, 0x51, 0xBE, 0xC0, 0x1C, 0x43, 0xC4,
                /* 0728 */  0x28, 0x2F, 0xD3, 0x86, 0x88, 0xE7, 0x53, 0x93,
                /* 0730 */  0xCF, 0x0A, 0x71, 0x43, 0x3C, 0x44, 0x1B, 0x21,
                /* 0738 */  0xEA, 0xF3, 0xB4, 0x27, 0xF4, 0x1A, 0x05, 0x5E,
                /* 0740 */  0x41, 0xD7, 0x28, 0x80, 0x26, 0xF7, 0x23, 0xDC,
                /* 0748 */  0x35, 0x0A, 0x2C, 0xF7, 0x06, 0x76, 0x1E, 0xE2,
                /* 0750 */  0x57, 0x22, 0x5F, 0x1B, 0x60, 0xDC, 0xA3, 0xE0,
                /* 0758 */  0xFC, 0xFF, 0xEF, 0x51, 0x80, 0x8D, 0x30, 0xF7,
                /* 0760 */  0x28, 0x1A, 0xE4, 0x1E, 0x85, 0x3A, 0x99, 0xF8,
                /* 0768 */  0x52, 0xE7, 0x89, 0x82, 0x23, 0xFC, 0x45, 0x0A,
                /* 0770 */  0x15, 0x9B, 0x44, 0xA1, 0x0F, 0x43, 0xA8, 0x98,
                /* 0778 */  0x87, 0x11, 0x0A, 0x62, 0x40, 0x67, 0x38, 0x51,
                /* 0780 */  0xA0, 0x55, 0x9C, 0x28, 0xC8, 0x2D, 0xC6, 0x93,
                /* 0788 */  0x7A, 0x8C, 0x02, 0x7C, 0x2D, 0xD3, 0x43, 0xE5,
                /* 0790 */  0x91, 0x87, 0x4A, 0x41, 0x3C, 0x54, 0xC7, 0x19,
                /* 0798 */  0x2A, 0x7A, 0x92, 0x9E, 0x3F, 0xE6, 0xFF, 0x7F,
                /* 07A0 */  0x70, 0xC0, 0x1E, 0xA4, 0x00, 0x5E, 0xA8, 0x3E,
                /* 07A8 */  0x48, 0xD1, 0x30, 0xE4, 0x0A, 0xB7, 0x10, 0x0A,
                /* 07B0 */  0xE3, 0x83, 0x14, 0xE0, 0xE8, 0x66, 0x89, 0x3B,
                /* 07B8 */  0x48, 0xC1, 0xF8, 0xFF, 0x1F, 0xA4, 0x30, 0x23,
                /* 07C0 */  0x60, 0xAF, 0x91, 0xE7, 0xA8, 0x58, 0x4F, 0xEB,
                /* 07C8 */  0x0C, 0x34, 0xCE, 0x5B, 0x91, 0xCF, 0x82, 0xEC,
                /* 07D0 */  0xC2, 0xE2, 0x63, 0x91, 0x09, 0x7C, 0x92, 0x82,
                /* 07D8 */  0x8B, 0xF1, 0x74, 0xEB, 0x43, 0xAD, 0x41, 0x1E,
                /* 07E0 */  0x9E, 0x9E, 0x6E, 0x7D, 0x96, 0x7A, 0x7F, 0x0A,
                /* 07E8 */  0x74, 0xA8, 0x0F, 0x51, 0x16, 0x37, 0x02, 0x72,
                /* 07F0 */  0xBF, 0xF5, 0x75, 0xEA, 0xD9, 0xD6, 0x28, 0x4F,
                /* 07F8 */  0x0F, 0x41, 0xE3, 0x44, 0x8C, 0x16, 0xD3, 0x50,
                /* 0800 */  0x81, 0xA2, 0xBC, 0x59, 0xF9, 0x24, 0x05, 0xB0,
                /* 0808 */  0xEC, 0xFF, 0x7F, 0x92, 0x02, 0xD7, 0xC5, 0x81,
                /* 0810 */  0x1D, 0x1C, 0x70, 0xF7, 0x06, 0x38, 0x27, 0x29,
                /* 0818 */  0xC0, 0x4F, 0x9E, 0x93, 0x14, 0xBD, 0xE2, 0xFA,
                /* 0820 */  0x24, 0xC5, 0x45, 0x41, 0x48, 0x11, 0x90, 0x26,
                /* 0828 */  0x0A, 0x96, 0x2B, 0x2E, 0xE0, 0xF2, 0xFF, 0x7F,
                /* 0830 */  0xC5, 0x05, 0xF8, 0xA8, 0xD0, 0xA6, 0x4F, 0x8D,
                /* 0838 */  0x46, 0xAD, 0x1A, 0x94, 0xA9, 0x51, 0xA6, 0x41,
                /* 0840 */  0xAD, 0x3E, 0x95, 0x1A, 0x33, 0x76, 0x37, 0xB0,
                /* 0848 */  0xB4, 0xBB, 0x04, 0x15, 0xB3, 0x18, 0x8D, 0xC6,
                /* 0850 */  0x51, 0x40, 0xA8, 0x6C, 0x09, 0x20, 0x2C, 0xE4,
                /* 0858 */  0x5F, 0x47, 0x80, 0x0E, 0xF6, 0xA7, 0x12, 0x90,
                /* 0860 */  0x65, 0xAD, 0x4D, 0x20, 0x8E, 0x6F, 0x02, 0xA2,
                /* 0868 */  0x11, 0x10, 0x69, 0xF9, 0xE6, 0x09, 0xC8, 0xB9,
                /* 0870 */  0x41, 0x04, 0x64, 0x15, 0x6B, 0x12, 0x90, 0x35,
                /* 0878 */  0xFF, 0x60, 0xF4, 0xFF, 0x07, 0xB7, 0x4E, 0x1D,
                /* 0880 */  0x40, 0x2C, 0x25, 0x08, 0x4D, 0xB4, 0x70, 0x81,
                /* 0888 */  0x3A, 0x1E, 0x88, 0x06, 0x43, 0x68, 0x04, 0xE4,
                /* 0890 */  0x60, 0x14, 0x02, 0xB2, 0x0C, 0x27, 0xE0, 0x4C,
                /* 0898 */  0x80, 0x15, 0x20, 0x26, 0x1F, 0x84, 0x0A, 0xF6,
                /* 08A0 */  0x02, 0xCA, 0xD4, 0x83, 0x08, 0xC8, 0x4A, 0xD7,
                /* 08A8 */  0x2A, 0x20, 0xEB, 0x06, 0x11, 0x90, 0xB3, 0x9A,
                /* 08B0 */  0x01, 0x67, 0x19, 0xDD, 0x00, 0x31, 0x85, 0x0F,
                /* 08B8 */  0x05, 0x81, 0x58, 0x93, 0x1E, 0x50, 0x26, 0x10,
                /* 08C0 */  0x44, 0x17, 0x0E, 0xE2, 0x07, 0x88, 0x49, 0x03,
                /* 08C8 */  0x11, 0x90, 0xE3, 0xDC, 0x4C, 0x04, 0xEE, 0x38,
                /* 08D0 */  0x8A, 0x00, 0xA9, 0xA3, 0xE1, 0x52, 0x10, 0x2A,
                /* 08D8 */  0xFE, 0x27, 0x26, 0x10, 0x0B, 0xB2, 0x04, 0x46,
                /* 08E0 */  0x41, 0x68, 0x04, 0x4D, 0x20, 0x4C, 0x9E, 0x27,
                /* 08E8 */  0x10, 0x16, 0xEA, 0xA7, 0xA2, 0x7B, 0x24, 0x51,
                /* 08F0 */  0x35, 0x44, 0xEA, 0x0A, 0x84, 0x05, 0x7E, 0x18,
                /* 08F8 */  0x68, 0x30, 0x4E, 0x0F, 0x22, 0x20, 0x27, 0x7D,
                /* 0900 */  0x55, 0x05, 0x22, 0xB9, 0x41, 0x04, 0xE4, 0xFC,
                /* 0908 */  0x0F, 0x11, 0x81, 0x3B, 0xF5, 0x6B, 0x42, 0xC3,
                /* 0910 */  0x27, 0xDF, 0xAB, 0x20, 0x44, 0xDC, 0xCF, 0x2A,
                /* 0918 */  0x28, 0x51, 0x0A, 0x22, 0x20, 0x2B, 0xFB, 0x5B,
                /* 0920 */  0x09, 0xC8, 0x3A, 0x41, 0x04, 0x64, 0xBD, 0xCF,
                /* 0928 */  0xAD, 0x07, 0x01, 0xF6, 0xCC, 0x7A, 0x10, 0x60,
                /* 0930 */  0x20, 0x34, 0xD5, 0xD3, 0x4A, 0xA0, 0x8E, 0x08,
                /* 0938 */  0xA2, 0x81, 0x12, 0x75, 0x40, 0x2C, 0x1C, 0x88,
                /* 0940 */  0x80, 0xFC, 0xFF, 0x07                         
            })
        }

        Device (WMI2)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_WDG, Buffer (0x64)
            {
                /* 0000 */  0xF1, 0x24, 0xB4, 0xFC, 0x5A, 0x07, 0x0E, 0x4E,
                /* 0008 */  0xBF, 0xC4, 0x62, 0xF3, 0xE7, 0x17, 0x71, 0xFA,
                /* 0010 */  0x41, 0x37, 0x01, 0x01, 0xE3, 0x5E, 0xBE, 0xE2,
                /* 0018 */  0xDA, 0x42, 0xDB, 0x49, 0x83, 0x78, 0x1F, 0x52,
                /* 0020 */  0x47, 0x38, 0x82, 0x02, 0x41, 0x38, 0x01, 0x02,
                /* 0028 */  0x9A, 0x01, 0x30, 0x74, 0xE9, 0xDC, 0x48, 0x45,
                /* 0030 */  0xBA, 0xB0, 0x9F, 0xDE, 0x09, 0x35, 0xCA, 0xFF,
                /* 0038 */  0x41, 0x39, 0x0A, 0x05, 0x03, 0x70, 0xF4, 0x7F,
                /* 0040 */  0x6C, 0x3B, 0x5E, 0x4E, 0xA2, 0x27, 0xE9, 0x79,
                /* 0048 */  0x82, 0x4A, 0x85, 0xD1, 0x41, 0x41, 0x01, 0x06,
                /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0060 */  0x42, 0x42, 0x01, 0x00                         
            })
            Name (PREL, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            })
            Method (WQA7, 1, NotSerialized)
            {
                Acquire (^^WMI1.MWMI, 0xFFFF)
                WMIS (0x07, 0x00)
                Store (WLS0, Index (PREL, 0x00))
                Store (WLS1, Index (PREL, 0x01))
                Store (WLS2, Index (PREL, 0x02))
                Store (WLS3, Index (PREL, 0x03))
                Store (WLS4, Index (PREL, 0x04))
                Store (WLS5, Index (PREL, 0x05))
                Store (WLS6, Index (PREL, 0x06))
                Store (WLS7, Index (PREL, 0x07))
                Release (^^WMI1.MWMI)
                Return (PREL)
            }

            Method (WMA8, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, PRE0)
                CreateByteField (Arg2, 0x01, PRE1)
                CreateByteField (Arg2, 0x02, PRE2)
                CreateByteField (Arg2, 0x03, PRE3)
                CreateByteField (Arg2, 0x04, PRE4)
                CreateByteField (Arg2, 0x05, PRE5)
                CreateByteField (Arg2, 0x06, PRE6)
                CreateByteField (Arg2, 0x07, PRE7)
                Acquire (^^WMI1.MWMI, 0xFFFF)
                Store (PRE0, WLS0)
                Store (PRE1, WLS1)
                Store (PRE2, WLS2)
                Store (PRE3, WLS3)
                Store (PRE4, WLS4)
                Store (PRE5, WLS5)
                Store (PRE6, WLS6)
                Store (PRE7, WLS7)
                WMIS (0x08, 0x00)
                Release (^^WMI1.MWMI)
            }

            Name (ITEM, Package (0x08)
            {
                Package (0x02)
                {
                    0x00, 
                    "InhibitEnteringThinkPadSetup"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "MTMSerialConcatenation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SwapProductName"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ComputraceMsgDisable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CpuDebugEnable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordAfterBootDeviceList"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "SpecialCharForPassword"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AbsoluteFree"
                }
            })
            Name (VSEL, Package (0x04)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }, 

                Package (0x25)
                {
                    "409", 
                    "c0c", 
                    "1009", 
                    "80a", 
                    "416", 
                    "813", 
                    "406", 
                    "40a", 
                    "40c", 
                    "407", 
                    "40e", 
                    "40f", 
                    "410", 
                    "414", 
                    "816", 
                    "424", 
                    "40b", 
                    "807", 
                    "41f", 
                    "809", 
                    "411", 
                    "412", 
                    "404", 
                    "841f", 
                    "425", 
                    "8406", 
                    "405", 
                    "401", 
                    "402", 
                    "408", 
                    "40d", 
                    "419", 
                    "8409", 
                    "41e", 
                    "4009", 
                    "9009", 
                    "422"
                }, 

                Package (0x06)
                {
                    "Disable", 
                    "Enable", 
                    "Default", 
                    "MTMSN", 
                    "1SMTMSN", 
                    "MTSN"
                }
            })
            Method (WQA9, 1, NotSerialized)
            {
                Acquire (^^WMI1.MWMI, 0xFFFF)
                If (LNotEqual (WMIS (0x09, Arg0), 0x00))
                {
                    Release (^^WMI1.MWMI)
                    Return ("")
                }

                Store (DerefOf (Index (ITEM, WITM)), Local0)
                Store (DerefOf (Index (Local0, 0x00)), Local1)
                Store (DerefOf (Index (Local0, 0x01)), Local2)
                Concatenate (Local2, ",", Local6)
                Store (DerefOf (Index (VSEL, Local1)), Local3)
                Concatenate (Local6, DerefOf (Index (Local3, WSEL)), Local7)
                Release (^^WMI1.MWMI)
                Return (Local7)
            }

            Method (WMAA, 3, NotSerialized)
            {
                Acquire (^^WMI1.MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (^^WMI1.CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        Store (^^WMI1.WSET (ITEM, VSEL), Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Store (WMIS (0x0A, 0x00), Local0)
                        }
                    }
                }

                Release (^^WMI1.MWMI)
                Return (DerefOf (Index (^^WMI1.RETN, Local0)))
            }

            Name (WQBB, Buffer (0x0538)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x28, 0x05, 0x00, 0x00, 0xAE, 0x18, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x98, 0xDE, 0x8B, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x0D, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,
                /* 0070 */  0xC8, 0x95, 0x0A, 0xB0, 0x08, 0x25, 0x9F, 0x80,
                /* 0078 */  0x92, 0x88, 0x22, 0xD9, 0x78, 0xB2, 0x8D, 0x48,
                /* 0080 */  0xE6, 0x61, 0x91, 0x83, 0x40, 0x89, 0x19, 0x04,
                /* 0088 */  0x4A, 0x27, 0xAE, 0x6C, 0xE2, 0x6A, 0x10, 0x07,
                /* 0090 */  0x10, 0xE5, 0x3C, 0xA2, 0x24, 0x38, 0xAA, 0x83,
                /* 0098 */  0x88, 0x10, 0xBB, 0x5C, 0x01, 0x92, 0x07, 0x20,
                /* 00A0 */  0xCD, 0x13, 0x93, 0xF5, 0x39, 0x68, 0x64, 0x6C,
                /* 00A8 */  0x04, 0x3C, 0x98, 0x04, 0x10, 0x16, 0x65, 0x9D,
                /* 00B0 */  0x8A, 0x02, 0x83, 0xF2, 0x00, 0x22, 0x39, 0x63,
                /* 00B8 */  0x45, 0x01, 0xDB, 0xEB, 0x44, 0x64, 0x72, 0xA0,
                /* 00C0 */  0x54, 0x12, 0x1C, 0x6A, 0x98, 0x9E, 0x5A, 0xF3,
                /* 00C8 */  0x13, 0xD3, 0x44, 0x4E, 0xAD, 0xE9, 0x21, 0x0B,
                /* 00D0 */  0x92, 0x49, 0x1B, 0x0A, 0x6A, 0xEC, 0x9E, 0xD6,
                /* 00D8 */  0x49, 0x79, 0xA6, 0x11, 0x0F, 0xCA, 0x30, 0x09,
                /* 00E0 */  0x3C, 0x0A, 0x86, 0xC6, 0x09, 0xCA, 0x82, 0x90,
                /* 00E8 */  0x83, 0x81, 0xA2, 0x00, 0x4F, 0xC2, 0x73, 0x2C,
                /* 00F0 */  0x5E, 0x80, 0xF0, 0x11, 0x93, 0xB3, 0x40, 0x8C,
                /* 00F8 */  0x04, 0x3E, 0x13, 0x78, 0xE4, 0xC7, 0x8C, 0x1D,
                /* 0100 */  0x51, 0xB8, 0x80, 0xE7, 0x73, 0x0C, 0x91, 0xE3,
                /* 0108 */  0x1E, 0x6A, 0x8C, 0xA3, 0x88, 0x7C, 0x38, 0x0C,
                /* 0110 */  0xED, 0x74, 0xE3, 0x1C, 0xD8, 0xE9, 0x14, 0x04,
                /* 0118 */  0x2E, 0x90, 0x60, 0x3D, 0xCF, 0x59, 0x20, 0xFF,
                /* 0120 */  0xFF, 0x18, 0x07, 0xC1, 0xF0, 0x8E, 0x01, 0x23,
                /* 0128 */  0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x96, 0x26,
                /* 0130 */  0x91, 0xC0, 0xEE, 0x05, 0x68, 0xBC, 0x04, 0x48,
                /* 0138 */  0xE1, 0x20, 0xA5, 0x0C, 0x42, 0x30, 0x8D, 0x09,
                /* 0140 */  0xB0, 0x75, 0x68, 0x90, 0x37, 0x01, 0xD6, 0xAE,
                /* 0148 */  0x02, 0x42, 0x89, 0x74, 0x02, 0x71, 0x42, 0x44,
                /* 0150 */  0x89, 0x18, 0xD4, 0x40, 0x51, 0x6A, 0x43, 0x15,
                /* 0158 */  0x4C, 0x67, 0xC3, 0x13, 0x66, 0xDC, 0x10, 0x31,
                /* 0160 */  0x0C, 0x14, 0xB7, 0xFD, 0x41, 0x90, 0x61, 0xE3,
                /* 0168 */  0xC6, 0xEF, 0x41, 0x9D, 0xD6, 0xD9, 0x1D, 0xD3,
                /* 0170 */  0xAB, 0x82, 0x09, 0x3C, 0xE9, 0x37, 0x84, 0xA7,
                /* 0178 */  0x83, 0xA3, 0x38, 0xDA, 0xA8, 0x31, 0x9A, 0x23,
                /* 0180 */  0x65, 0xAB, 0xD6, 0xB9, 0xC2, 0x91, 0xE0, 0x51,
                /* 0188 */  0xE7, 0x05, 0x9F, 0x0C, 0x3C, 0xB4, 0xC3, 0xF6,
                /* 0190 */  0x60, 0xCF, 0xD2, 0x43, 0x38, 0x82, 0x67, 0x86,
                /* 0198 */  0x47, 0x02, 0x8F, 0x81, 0xDD, 0x15, 0x7C, 0x08,
                /* 01A0 */  0xF0, 0x19, 0x01, 0xEF, 0x1A, 0x50, 0x97, 0x83,
                /* 01A8 */  0x47, 0x03, 0x36, 0xE9, 0x70, 0x98, 0xF1, 0x7A,
                /* 01B0 */  0xEE, 0x9E, 0xBA, 0xCF, 0x18, 0xFC, 0xBC, 0xE1,
                /* 01B8 */  0xC1, 0xE1, 0x46, 0x7A, 0x32, 0x47, 0x56, 0xAA,
                /* 01C0 */  0x00, 0xB3, 0xD7, 0x00, 0x1D, 0x25, 0x7C, 0xE0,
                /* 01C8 */  0x60, 0x77, 0x81, 0xA7, 0x00, 0x13, 0x58, 0xFE,
                /* 01D0 */  0x20, 0x50, 0x23, 0x33, 0xB4, 0xC7, 0xFB, 0xDE,
                /* 01D8 */  0x61, 0xC8, 0x27, 0x85, 0xC3, 0x62, 0x62, 0x0F,
                /* 01E0 */  0x1E, 0x74, 0x3C, 0xE0, 0xBF, 0x8F, 0x3C, 0x69,
                /* 01E8 */  0x78, 0xFA, 0x9E, 0xAF, 0x09, 0x06, 0x86, 0x90,
                /* 01F0 */  0x95, 0xF1, 0xA0, 0x06, 0x62, 0xE8, 0x57, 0x85,
                /* 01F8 */  0xC3, 0x38, 0x0D, 0x9F, 0x40, 0x7C, 0x0E, 0x08,
                /* 0200 */  0x12, 0xE3, 0x98, 0x3C, 0x38, 0xFF, 0xFF, 0x09,
                /* 0208 */  0x1C, 0x6B, 0xE4, 0xF4, 0x9C, 0xE2, 0xF3, 0x04,
                /* 0210 */  0x3F, 0x5C, 0xF8, 0x3C, 0xC1, 0x4E, 0x0C, 0xA7,
                /* 0218 */  0xF1, 0x1C, 0xE0, 0xE1, 0x9C, 0x95, 0x8F, 0x13,
                /* 0220 */  0xC0, 0x02, 0xE2, 0x75, 0x82, 0x0F, 0x14, 0x3E,
                /* 0228 */  0xEC, 0xA1, 0x79, 0x14, 0x2F, 0x11, 0x6F, 0x0F,
                /* 0230 */  0x26, 0x88, 0xF6, 0x10, 0x03, 0xC6, 0x19, 0xE1,
                /* 0238 */  0xCE, 0x1B, 0x70, 0x4E, 0x31, 0xC0, 0x03, 0xEA,
                /* 0240 */  0x10, 0x30, 0x87, 0x09, 0x0F, 0x81, 0x0F, 0xE0,
                /* 0248 */  0x19, 0xE4, 0x1C, 0x7D, 0xCC, 0x39, 0x33, 0xDC,
                /* 0250 */  0x71, 0x07, 0x6C, 0xC3, 0xE0, 0x91, 0x2D, 0x80,
                /* 0258 */  0xB0, 0x38, 0x4F, 0x02, 0x05, 0x7C, 0x1B, 0x50,
                /* 0260 */  0x18, 0x1F, 0x6E, 0xC0, 0xFB, 0xFF, 0x3F, 0xDC,
                /* 0268 */  0x00, 0xD7, 0xF3, 0x01, 0xEE, 0xF8, 0x00, 0xF7,
                /* 0270 */  0x62, 0xC1, 0x0E, 0x0F, 0x8F, 0x37, 0xC0, 0x60,
                /* 0278 */  0x48, 0x8F, 0x34, 0x6F, 0x35, 0x31, 0x5E, 0x6D,
                /* 0280 */  0x42, 0x44, 0x78, 0xA8, 0x79, 0xB7, 0x31, 0x52,
                /* 0288 */  0xBC, 0xC7, 0x1B, 0x76, 0x8D, 0x39, 0x8B, 0x07,
                /* 0290 */  0x90, 0x28, 0xC5, 0xA1, 0xE9, 0x62, 0x13, 0x23,
                /* 0298 */  0xCA, 0x9B, 0x8D, 0x61, 0xDF, 0x74, 0x0C, 0x14,
                /* 02A0 */  0x2A, 0x52, 0x84, 0x30, 0x2F, 0x16, 0x21, 0x1E,
                /* 02A8 */  0x6F, 0xC0, 0x2C, 0xE9, 0xA5, 0xA2, 0xCF, 0x81,
                /* 02B0 */  0x8F, 0x37, 0x80, 0x97, 0xFF, 0xFF, 0xF1, 0x06,
                /* 02B8 */  0xF0, 0x30, 0x0C, 0x1F, 0x53, 0xC0, 0x76, 0x73,
                /* 02C0 */  0x60, 0xF7, 0x14, 0xF8, 0xE7, 0x14, 0xC0, 0x91,
                /* 02C8 */  0x90, 0x47, 0x80, 0x0E, 0x1E, 0x16, 0x01, 0x22,
                /* 02D0 */  0x1B, 0xCF, 0x00, 0x9F, 0x89, 0xA8, 0x40, 0x2A,
                /* 02D8 */  0xCD, 0x14, 0x2C, 0xE3, 0x14, 0xAC, 0x4E, 0x88,
                /* 02E0 */  0x5C, 0x06, 0x85, 0x44, 0x40, 0x68, 0x64, 0x86,
                /* 02E8 */  0xF3, 0x21, 0xD1, 0x60, 0x06, 0xF1, 0xF9, 0xC0,
                /* 02F0 */  0x67, 0x0A, 0x9F, 0x9C, 0xF8, 0xFF, 0xFF, 0xE4,
                /* 02F8 */  0x04, 0x9E, 0x83, 0xC9, 0x43, 0x05, 0x2C, 0x44,
                /* 0300 */  0x9F, 0x16, 0x38, 0x9C, 0xCF, 0x2C, 0x1C, 0xCE,
                /* 0308 */  0x47, 0x12, 0x7E, 0x80, 0xE4, 0x47, 0x25, 0x70,
                /* 0310 */  0x09, 0x3C, 0x34, 0x80, 0x02, 0xC8, 0xF7, 0x03,
                /* 0318 */  0x9F, 0x03, 0x9E, 0x11, 0xD8, 0x1C, 0x1E, 0x09,
                /* 0320 */  0x7C, 0x20, 0x60, 0xF0, 0x3C, 0xDA, 0xA8, 0xE8,
                /* 0328 */  0xD1, 0xC6, 0xC3, 0xE3, 0x47, 0x06, 0xCF, 0xE7,
                /* 0330 */  0x81, 0xE0, 0x28, 0x1F, 0x09, 0x70, 0x18, 0xEF,
                /* 0338 */  0x17, 0x1E, 0xA2, 0x4F, 0x39, 0xB0, 0x26, 0x72,
                /* 0340 */  0xD4, 0x16, 0x7D, 0x22, 0x10, 0xE8, 0x33, 0x17,
                /* 0348 */  0xE6, 0x94, 0x03, 0x9C, 0x82, 0x8F, 0x1E, 0x15,
                /* 0350 */  0xF5, 0x40, 0x0A, 0xDA, 0x93, 0x82, 0xCF, 0x0A,
                /* 0358 */  0x3E, 0x7C, 0xC1, 0xFF, 0xFF, 0x1F, 0xBE, 0xE0,
                /* 0360 */  0xCC, 0xEB, 0x65, 0xCD, 0x07, 0x8E, 0x38, 0x67,
                /* 0368 */  0x71, 0xBA, 0xEF, 0x16, 0xF8, 0x13, 0x29, 0x30,
                /* 0370 */  0x0B, 0x72, 0x22, 0x45, 0xC1, 0xF8, 0x44, 0x0A,
                /* 0378 */  0xD8, 0xBC, 0x05, 0x60, 0xAF, 0x0B, 0x4F, 0x22,
                /* 0380 */  0x30, 0xCE, 0x11, 0xCF, 0x58, 0x30, 0x0F, 0x55,
                /* 0388 */  0xA7, 0xF8, 0x52, 0xF5, 0xC6, 0x10, 0xE1, 0xC9,
                /* 0390 */  0xEA, 0x35, 0xEA, 0x01, 0xCB, 0x60, 0x2F, 0x02,
                /* 0398 */  0x86, 0x79, 0xC5, 0xF2, 0xE9, 0x2A, 0xC4, 0x03,
                /* 03A0 */  0x96, 0xCF, 0x5A, 0xD1, 0x42, 0x84, 0x8C, 0x12,
                /* 03A8 */  0xEC, 0x15, 0xEB, 0x55, 0xC6, 0x47, 0x2A, 0x83,
                /* 03B0 */  0x07, 0x0C, 0x1B, 0x2D, 0x52, 0x84, 0x47, 0x2C,
                /* 03B8 */  0xFC, 0xFF, 0xFF, 0x88, 0x05, 0x1E, 0x09, 0x07,
                /* 03C0 */  0x52, 0x80, 0x2A, 0x03, 0xC7, 0x1D, 0x48, 0x81,
                /* 03C8 */  0xFD, 0x69, 0x02, 0x7F, 0xBD, 0xF0, 0x78, 0xB0,
                /* 03D0 */  0xFF, 0xFF, 0x73, 0x00, 0xF8, 0x0E, 0x31, 0xC0,
                /* 03D8 */  0x60, 0xC0, 0x30, 0x0E, 0x31, 0xC0, 0x43, 0xF0,
                /* 03E0 */  0xC9, 0x0C, 0xF4, 0xC7, 0x1D, 0xF8, 0xE3, 0xE0,
                /* 03E8 */  0x19, 0x9F, 0x1C, 0x26, 0x50, 0x98, 0x13, 0x29,
                /* 03F0 */  0x0A, 0xC6, 0x27, 0x52, 0xC0, 0xD9, 0xFF, 0xFF,
                /* 03F8 */  0x70, 0x05, 0x86, 0xE3, 0x0D, 0xF8, 0x6F, 0x33,
                /* 0400 */  0x3E, 0x84, 0xFA, 0x7C, 0xE3, 0x0B, 0xA9, 0x21,
                /* 0408 */  0x5E, 0x6C, 0xDE, 0xD4, 0x5E, 0x09, 0x5E, 0xDF,
                /* 0410 */  0xD9, 0xB5, 0xE6, 0xF5, 0xDD, 0xA7, 0x82, 0x27,
                /* 0418 */  0xD1, 0x08, 0x21, 0xA3, 0xBC, 0xE4, 0x18, 0x24,
                /* 0420 */  0xC4, 0xEB, 0xA8, 0x01, 0x83, 0x05, 0x89, 0x78,
                /* 0428 */  0x0A, 0x4F, 0x3B, 0x8F, 0x37, 0xE0, 0x15, 0x75,
                /* 0430 */  0x20, 0x05, 0xE8, 0xF1, 0xFF, 0x3F, 0x90, 0x02,
                /* 0438 */  0x83, 0x7B, 0x0A, 0xEC, 0x73, 0x0A, 0xE0, 0x29,
                /* 0440 */  0xF9, 0x89, 0x94, 0xA6, 0x3E, 0x91, 0xA2, 0x15,
                /* 0448 */  0x01, 0x69, 0xAA, 0x60, 0x21, 0x98, 0xFE, 0x44,
                /* 0450 */  0x4A, 0x0F, 0x06, 0xCE, 0x4D, 0xA2, 0xE4, 0x43,
                /* 0458 */  0xA3, 0x70, 0xCE, 0x7A, 0x20, 0xA1, 0x20, 0x06,
                /* 0460 */  0x74, 0x90, 0x43, 0x05, 0xFA, 0xAC, 0xE2, 0x03,
                /* 0468 */  0xC9, 0x81, 0x3C, 0x22, 0x7A, 0x58, 0x3E, 0x54,
                /* 0470 */  0xFA, 0xAE, 0xE2, 0x73, 0x88, 0x8F, 0x14, 0x1E,
                /* 0478 */  0xBF, 0x0F, 0x0B, 0xFC, 0x3F, 0xE3, 0xE3, 0x28,
                /* 0480 */  0x03, 0xAF, 0xE6, 0xBC, 0x82, 0x02, 0xF3, 0x69,
                /* 0488 */  0x14, 0xA3, 0xEB, 0x3E, 0x01, 0x92, 0xFF, 0xFF,
                /* 0490 */  0xFC, 0xB8, 0xBE, 0xC3, 0x28, 0xC8, 0xD1, 0x79,
                /* 0498 */  0xF8, 0xC9, 0xA2, 0xE2, 0x4E, 0x96, 0x82, 0x78,
                /* 04A0 */  0xB2, 0x8E, 0x32, 0x59, 0xF4, 0x4C, 0x7C, 0xBB,
                /* 04A8 */  0xF0, 0x8C, 0xDE, 0xBB, 0x7C, 0x83, 0x65, 0x37,
                /* 04B0 */  0x59, 0x78, 0x97, 0x81, 0x90, 0x8F, 0x06, 0xBE,
                /* 04B8 */  0xC9, 0xC2, 0x1D, 0x8B, 0x2F, 0x23, 0xE0, 0xBB,
                /* 04C0 */  0xC9, 0x02, 0x5E, 0x47, 0xE3, 0xB3, 0x05, 0x3B,
                /* 04C8 */  0x85, 0xF8, 0xBA, 0x06, 0x4B, 0xA1, 0x4D, 0x9F,
                /* 04D0 */  0x1A, 0x8D, 0x5A, 0xFD, 0xFF, 0x1B, 0x94, 0xA9,
                /* 04D8 */  0x51, 0xA6, 0x41, 0xAD, 0x3E, 0x95, 0x1A, 0x33,
                /* 04E0 */  0x76, 0xA1, 0xB0, 0xB8, 0x0B, 0x06, 0x95, 0xB4,
                /* 04E8 */  0x2C, 0x8D, 0xCB, 0x81, 0x40, 0x68, 0x80, 0x5B,
                /* 04F0 */  0xA9, 0x40, 0x1C, 0xFA, 0x0B, 0xA4, 0x53, 0x02,
                /* 04F8 */  0xF9, 0x6A, 0x09, 0xC8, 0x62, 0x57, 0x25, 0x10,
                /* 0500 */  0xCB, 0x54, 0x01, 0xD1, 0xC8, 0xDD, 0xC2, 0x20,
                /* 0508 */  0x02, 0x72, 0xBC, 0x4F, 0x8D, 0x40, 0x1D, 0x49,
                /* 0510 */  0x07, 0x10, 0x13, 0xE4, 0x63, 0xAC, 0xF4, 0x25,
                /* 0518 */  0x20, 0x10, 0xCB, 0xA6, 0x15, 0xA0, 0xE5, 0x3A,
                /* 0520 */  0x01, 0x62, 0x61, 0x41, 0x68, 0xC0, 0x5F, 0xB5,
                /* 0528 */  0x86, 0xE0, 0xB4, 0x20, 0x02, 0x72, 0x32, 0x2D,
                /* 0530 */  0x40, 0x2C, 0x27, 0x88, 0x80, 0xFC, 0xFF, 0x07 
            })
        }

        Device (WMI3)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_WDG, /**** Is ResourceTemplate, but EndTag not at buffer end ****/ Buffer (0x3C)
            {
                /* 0000 */  0x79, 0x36, 0x4D, 0x8F, 0x9E, 0x74, 0x79, 0x44,
                /* 0008 */  0x9B, 0x16, 0xC6, 0x26, 0x01, 0xFD, 0x25, 0xF0,
                /* 0010 */  0x41, 0x42, 0x01, 0x02, 0x69, 0xE8, 0xD2, 0x85,
                /* 0018 */  0x5A, 0x36, 0xCE, 0x4A, 0xA4, 0xD3, 0xCD, 0x69,
                /* 0020 */  0x2B, 0x16, 0x98, 0xA0, 0x41, 0x43, 0x01, 0x02,
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0038 */  0x42, 0x43, 0x01, 0x00                         
            })
            Method (WMAB, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                CreateByteField (Arg2, 0x03, ASS2)
                Acquire (^^WMI1.MWMI, 0xFFFF)
                Store (ASS0, WASB)
                Store (ASS1, WASI)
                Store (ASS2, WASD)
                WMIS (0x0B, 0x00)
                Store (WASS, Local0)
                Release (^^WMI1.MWMI)
                Return (Local0)
            }

            Method (WMAC, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                Acquire (^^WMI1.MWMI, 0xFFFF)
                Store (ASS0, WASB)
                Store (ASS1, WASI)
                WMIS (0x0C, Arg1)
                Store (WASS, Local0)
                Release (^^WMI1.MWMI)
                Return (Local0)
            }

            Name (WQBC, Buffer (0x040A)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0xFA, 0x03, 0x00, 0x00, 0x32, 0x12, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x98, 0xC3, 0x88, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x07, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,
                /* 0070 */  0x58, 0x07, 0x11, 0x21, 0xD2, 0x31, 0x34, 0x29,
                /* 0078 */  0x40, 0xA2, 0x00, 0x8B, 0x02, 0x64, 0xC3, 0xC8,
                /* 0080 */  0x36, 0x22, 0x99, 0x87, 0x45, 0x0E, 0x02, 0x25,
                /* 0088 */  0x66, 0x10, 0x28, 0x9D, 0xE0, 0xB2, 0x89, 0xAB,
                /* 0090 */  0x41, 0x9C, 0x4C, 0x94, 0xF3, 0x88, 0x92, 0xE0,
                /* 0098 */  0xA8, 0x0E, 0x22, 0x42, 0xEC, 0x72, 0x05, 0x48,
                /* 00A0 */  0x1E, 0x80, 0x34, 0x4F, 0x4C, 0xD6, 0xE7, 0xA0,
                /* 00A8 */  0x91, 0xB1, 0x11, 0xF0, 0x94, 0x1A, 0x40, 0x58,
                /* 00B0 */  0xA0, 0x75, 0x2A, 0xE0, 0x7A, 0x0D, 0x43, 0x3D,
                /* 00B8 */  0x80, 0x48, 0xCE, 0x58, 0x51, 0xC0, 0xF6, 0x3A,
                /* 00C0 */  0x11, 0x8D, 0xEA, 0x40, 0x99, 0x24, 0x38, 0xD4,
                /* 00C8 */  0x30, 0x3D, 0xB5, 0xE6, 0x27, 0xA6, 0x89, 0x9C,
                /* 00D0 */  0x5A, 0xD3, 0x43, 0x16, 0x24, 0x93, 0x36, 0x14,
                /* 00D8 */  0xD4, 0xD8, 0x3D, 0xAD, 0x93, 0xF2, 0x4C, 0x23,
                /* 00E0 */  0x1E, 0x94, 0x61, 0x12, 0x78, 0x14, 0x0C, 0x8D,
                /* 00E8 */  0x13, 0x94, 0x75, 0x22, 0xA0, 0x03, 0xE5, 0x80,
                /* 00F0 */  0x27, 0xE1, 0x39, 0x16, 0x2F, 0x40, 0xF8, 0x88,
                /* 00F8 */  0xC9, 0xB4, 0x4D, 0xE0, 0x33, 0x81, 0x87, 0x79,
                /* 0100 */  0xCC, 0xD8, 0x11, 0x85, 0x0B, 0x78, 0x3E, 0xC7,
                /* 0108 */  0x10, 0x39, 0xEE, 0xA1, 0xC6, 0x38, 0x8A, 0xC8,
                /* 0110 */  0x47, 0x60, 0x24, 0x03, 0xC5, 0x2B, 0x08, 0x89,
                /* 0118 */  0x80, 0xF8, 0x76, 0x70, 0x70, 0x91, 0xFC, 0xFF,
                /* 0120 */  0x47, 0x89, 0x11, 0x2A, 0xC6, 0xDB, 0x00, 0x6E,
                /* 0128 */  0x5E, 0x09, 0x8A, 0x1E, 0x07, 0x4A, 0x06, 0x84,
                /* 0130 */  0x3C, 0x0A, 0xB0, 0x7A, 0x28, 0x20, 0x04, 0x16,
                /* 0138 */  0x27, 0x40, 0xE3, 0x38, 0x05, 0xD3, 0x99, 0x00,
                /* 0140 */  0x6D, 0x02, 0xBC, 0x09, 0x30, 0x27, 0xC0, 0x16,
                /* 0148 */  0x86, 0x80, 0x82, 0x9C, 0x59, 0x94, 0x20, 0x11,
                /* 0150 */  0x42, 0x31, 0x88, 0x0A, 0x05, 0x18, 0x43, 0x14,
                /* 0158 */  0xCA, 0x3B, 0x41, 0x8C, 0xCA, 0x20, 0x74, 0x82,
                /* 0160 */  0x08, 0x14, 0x3D, 0x78, 0x98, 0xD6, 0x40, 0x74,
                /* 0168 */  0x89, 0xF0, 0xC8, 0xB1, 0x47, 0x00, 0x9F, 0x19,
                /* 0170 */  0xCE, 0xE9, 0x04, 0x1F, 0x01, 0xDE, 0x16, 0x4C,
                /* 0178 */  0xE0, 0x79, 0xBF, 0x24, 0x1C, 0x6A, 0xD8, 0x03,
                /* 0180 */  0x8E, 0x1A, 0xE3, 0x28, 0x12, 0x58, 0xD0, 0x33,
                /* 0188 */  0x42, 0x16, 0x40, 0x14, 0x09, 0x1E, 0x75, 0x64,
                /* 0190 */  0xF0, 0xE1, 0xC0, 0x23, 0x3B, 0x72, 0xCF, 0xF0,
                /* 0198 */  0x04, 0x82, 0x1C, 0xC2, 0x11, 0x3C, 0x36, 0x3C,
                /* 01A0 */  0x15, 0x78, 0x0C, 0xEC, 0xBA, 0xE0, 0x73, 0x80,
                /* 01A8 */  0x8F, 0x09, 0x78, 0xD7, 0x80, 0x9A, 0xF3, 0xD3,
                /* 01B0 */  0x01, 0x9B, 0x72, 0x38, 0xCC, 0x70, 0x3D, 0xFD,
                /* 01B8 */  0x70, 0x27, 0x70, 0xD2, 0x06, 0x64, 0xB3, 0xF3,
                /* 01C0 */  0xE0, 0x70, 0xE3, 0x3C, 0x99, 0x23, 0x2B, 0x55,
                /* 01C8 */  0x80, 0xD9, 0x13, 0x82, 0x4E, 0x13, 0x3E, 0x73,
                /* 01D0 */  0xB0, 0xBB, 0xC0, 0xF9, 0xF4, 0x0C, 0x49, 0xE4,
                /* 01D8 */  0x0F, 0x02, 0x35, 0x32, 0x43, 0xFB, 0x2C, 0xF0,
                /* 01E0 */  0xEA, 0x61, 0xC8, 0x87, 0x85, 0xC3, 0x62, 0x62,
                /* 01E8 */  0xCF, 0x1E, 0x74, 0x3C, 0xE0, 0x3F, 0x25, 0x3C,
                /* 01F0 */  0x6C, 0x78, 0xFA, 0x9E, 0xAF, 0x09, 0xA2, 0x3D,
                /* 01F8 */  0x8F, 0x80, 0xE1, 0xFF, 0x7F, 0x1E, 0x81, 0x39,
                /* 0200 */  0x9C, 0x07, 0x84, 0x27, 0x07, 0x76, 0x80, 0xC0,
                /* 0208 */  0x1C, 0x48, 0x80, 0xC9, 0xF9, 0x02, 0x77, 0x28,
                /* 0210 */  0xF0, 0x10, 0xF8, 0x00, 0x1E, 0x25, 0xCE, 0xD1,
                /* 0218 */  0x4A, 0x67, 0x86, 0x3C, 0xB9, 0x80, 0x2D, 0xFB,
                /* 0220 */  0x1B, 0x40, 0x07, 0x0F, 0xE7, 0x06, 0x91, 0x8D,
                /* 0228 */  0x57, 0x80, 0x09, 0x74, 0x38, 0xB1, 0x1E, 0x20,
                /* 0230 */  0x4D, 0x14, 0x0C, 0x04, 0xD3, 0xD3, 0x6B, 0x00,
                /* 0238 */  0x3E, 0x15, 0x38, 0x37, 0x89, 0x92, 0x0F, 0x8C,
                /* 0240 */  0xC2, 0x39, 0xEB, 0x79, 0x84, 0x82, 0x18, 0xD0,
                /* 0248 */  0x41, 0x20, 0xE4, 0xE4, 0xA0, 0x80, 0x3A, 0xAA,
                /* 0250 */  0xF8, 0x3C, 0x72, 0xAA, 0x0F, 0x3D, 0x9E, 0x94,
                /* 0258 */  0x47, 0xE1, 0xAB, 0x8A, 0x0F, 0x21, 0x3E, 0x4F,
                /* 0260 */  0x78, 0xF4, 0x3E, 0x29, 0xF0, 0xEF, 0x8C, 0xAF,
                /* 0268 */  0x0E, 0x46, 0xB7, 0x9A, 0xE3, 0x0A, 0x0A, 0xCC,
                /* 0270 */  0x67, 0x11, 0x4E, 0x50, 0xD7, 0x6D, 0x01, 0xFA,
                /* 0278 */  0x29, 0xE0, 0x08, 0x3C, 0x94, 0x77, 0x92, 0xC7,
                /* 0280 */  0x90, 0x04, 0xF5, 0x9D, 0x16, 0x40, 0x01, 0xE4,
                /* 0288 */  0x9B, 0x81, 0x4F, 0x02, 0x21, 0xFE, 0xFF, 0x4F,
                /* 0290 */  0x07, 0x1E, 0xC3, 0xC3, 0x80, 0xD1, 0x8C, 0xCE,
                /* 0298 */  0xC3, 0x4F, 0x16, 0x15, 0x77, 0xB2, 0x14, 0xC4,
                /* 02A0 */  0x93, 0x75, 0x94, 0xC9, 0xA2, 0x67, 0xE2, 0xAB,
                /* 02A8 */  0x85, 0x27, 0x74, 0x4A, 0x41, 0xCE, 0xD1, 0x13,
                /* 02B0 */  0xF6, 0x55, 0x04, 0xD6, 0xF9, 0x20, 0xE4, 0x8B,
                /* 02B8 */  0x81, 0xA7, 0x61, 0x38, 0x4F, 0x96, 0xC3, 0x79,
                /* 02C0 */  0xB2, 0x7C, 0x2C, 0xBE, 0x6A, 0xC0, 0x1F, 0x2D,
                /* 02C8 */  0x96, 0xA0, 0xC0, 0xD9, 0x82, 0x1C, 0x1E, 0x13,
                /* 02D0 */  0x6F, 0x54, 0xF4, 0x46, 0xE4, 0xE1, 0xF1, 0xCB,
                /* 02D8 */  0x81, 0xE7, 0xF3, 0x8C, 0x70, 0x94, 0x6F, 0x12,
                /* 02E0 */  0x38, 0x8C, 0xC7, 0x12, 0x0F, 0xD1, 0x97, 0x23,
                /* 02E8 */  0x58, 0x13, 0x39, 0x69, 0xDF, 0x16, 0x4E, 0x36,
                /* 02F0 */  0xE8, 0x4B, 0x10, 0xBB, 0x1C, 0x01, 0xBF, 0x88,
                /* 02F8 */  0x26, 0x86, 0xC1, 0x22, 0x2D, 0x45, 0x11, 0x17,
                /* 0300 */  0x45, 0x61, 0x7C, 0xC5, 0x82, 0xFD, 0xFF, 0xBF,
                /* 0308 */  0x62, 0x01, 0x16, 0x04, 0x0F, 0x1B, 0x34, 0x87,
                /* 0310 */  0x83, 0x97, 0x1E, 0x36, 0x6B, 0x38, 0x07, 0x99,
                /* 0318 */  0xD3, 0xF1, 0x48, 0x4E, 0x1B, 0xC6, 0x1D, 0x0B,
                /* 0320 */  0xFE, 0x9D, 0xEA, 0xA9, 0xCA, 0xD3, 0x8A, 0xF2,
                /* 0328 */  0x64, 0xF5, 0x7A, 0xE5, 0x63, 0x96, 0xA1, 0xCE,
                /* 0330 */  0xE0, 0x1D, 0xCB, 0xB7, 0x3C, 0x4F, 0x21, 0x4A,
                /* 0338 */  0x9C, 0x97, 0x2D, 0x76, 0xC7, 0x32, 0x48, 0x50,
                /* 0340 */  0x23, 0x3F, 0x68, 0x31, 0x94, 0xE0, 0xF1, 0xDE,
                /* 0348 */  0xB1, 0x00, 0x6F, 0xFF, 0xFF, 0x3B, 0x16, 0x60,
                /* 0350 */  0xFC, 0x04, 0xC1, 0x09, 0x7C, 0xC7, 0x02, 0x1C,
                /* 0358 */  0xC5, 0x7E, 0x37, 0xE8, 0x4A, 0x45, 0xEE, 0x58,
                /* 0360 */  0x28, 0x0E, 0xAB, 0xB9, 0x63, 0x41, 0x9C, 0x28,
                /* 0368 */  0xE6, 0x8A, 0x05, 0x86, 0xFF, 0xFF, 0x15, 0x0B,
                /* 0370 */  0xE0, 0x75, 0xC0, 0x2B, 0x16, 0x68, 0xFE, 0xFF,
                /* 0378 */  0x57, 0x2C, 0xF0, 0x5E, 0x8E, 0x80, 0xDF, 0x09,
                /* 0380 */  0xD1, 0x77, 0x0D, 0x7E, 0x9A, 0xB6, 0xA2, 0xBB,
                /* 0388 */  0x06, 0x94, 0x19, 0xBE, 0x07, 0xF9, 0xB0, 0x13,
                /* 0390 */  0x2C, 0xD2, 0xA3, 0x8D, 0x6F, 0x49, 0xE1, 0x7C,
                /* 0398 */  0xDB, 0x00, 0xD8, 0xF2, 0xFF, 0xBF, 0x6D, 0x00,
                /* 03A0 */  0x4C, 0x19, 0xBF, 0x6F, 0x1B, 0xC0, 0x4F, 0xA1,
                /* 03A8 */  0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53,
                /* 03B0 */  0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66,
                /* 03B8 */  0x4C, 0xC9, 0xC1, 0xCE, 0x77, 0x0C, 0x2A, 0x6C,
                /* 03C0 */  0x65, 0x1A, 0x9A, 0x63, 0x81, 0xD0, 0x10, 0xC7,
                /* 03C8 */  0x26, 0x19, 0x01, 0x51, 0x22, 0x10, 0x01, 0x59,
                /* 03D0 */  0xFD, 0x6F, 0x42, 0x40, 0xCE, 0x02, 0x22, 0x20,
                /* 03D8 */  0x2B, 0x58, 0x9A, 0xC0, 0x9D, 0xFF, 0xD8, 0x28,
                /* 03E0 */  0x40, 0xA2, 0x02, 0x84, 0x29, 0x7D, 0x93, 0x09,
                /* 03E8 */  0xD4, 0xB2, 0x41, 0x04, 0xF4, 0xFF, 0x3F, 0x42,
                /* 03F0 */  0xD9, 0x00, 0x62, 0x82, 0x41, 0x04, 0x64, 0x91,
                /* 03F8 */  0x3E, 0x80, 0x98, 0x62, 0x10, 0x01, 0x59, 0xDD,
                /* 0400 */  0xA3, 0x40, 0x40, 0xD6, 0x0A, 0x22, 0x20, 0xFF,
                /* 0408 */  0xFF, 0x01                                     
            })
        }

        Device (WMI4)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0x57, 0xBB, 0x84, 0x85, 0x31, 0x5E, 0xC4, 0x46,
                /* 0008 */  0xBC, 0x8E, 0x5E, 0x94, 0x56, 0x3A, 0xE4, 0x15,
                /* 0010 */  0x41, 0x44, 0x01, 0x06, 0x21, 0x12, 0x90, 0x05,
                /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x44, 0x01, 0x00 
            })
            Name (TDRV, Package (0x08)
            {
                "Drv1", 
                "Drv2", 
                "Drv3", 
                "Drv4", 
                "Drv5", 
                "Drv6", 
                "Drv7", 
                "Drv8"
            })
            Name (PTYP, Package (0x05)
            {
                "POP", 
                "SVP", 
                "SMP", 
                "UHDP", 
                "MHDP"
            })
            Name (EMTH, Package (0x0B)
            {
                "ATAN", 
                "ATAC", 
                "DOD", 
                "SPZ", 
                "USNAF", 
                "CCI6", 
                "BHI5", 
                "GV", 
                "RGP1", 
                "RGP4", 
                "RTOII"
            })
            Method (WMAD, 3, NotSerialized)
            {
                Acquire (^^WMI1.MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (^^WMI1.CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        If (LNotEqual (^^WMI1.ILEN, 0x00))
                        {
                            ^^WMI1.CLRP ()
                            Store (SWIP (^^WMI1.IBUF), Local0)
                            If (LEqual (Local0, 0x00))
                            {
                                Store (WMIS (0x0D, 0x00), Local0)
                            }

                            ^^WMI1.CLRP ()
                        }
                    }
                }

                Release (^^WMI1.MWMI)
                Return (DerefOf (Index (^^WMI1.RETN, Local0)))
            }

            Method (SWIP, 1, NotSerialized)
            {
                Store (^^WMI1.GSEL (TDRV, Arg0, 0x00), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WDRV)
                Store (^^WMI1.SLEN (TDRV, Local6), Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (^^WMI1.GSEL (EMTH, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WMTH)
                Add (Local0, ^^WMI1.SLEN (EMTH, Local6), Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (^^WMI1.GSEL (PTYP, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, WPTY)
                Add (Local0, ^^WMI1.SLEN (PTYP, Local6), Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (^^WMI1.GPAS (Arg0, Local0), Local1)
                If (LOr (LEqual (Local1, Ones), LEqual (Local1, 0x00)))
                {
                    Return (0x02)
                }

                Store (^^WMI1.PSTR, WPAS)
                Return (0x00)
            }

            Name (WQBD, Buffer (0x0322)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                /* 0008 */  0x12, 0x03, 0x00, 0x00, 0x36, 0x08, 0x00, 0x00,
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                /* 0018 */  0x98, 0xDA, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42,
                /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0x0E, 0x21, 0x02, 0x0B,
                /* 0028 */  0x83, 0x50, 0x58, 0x18, 0x14, 0xA0, 0x45, 0x41,
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                /* 0048 */  0x31, 0xD4, 0x18, 0xA8, 0x58, 0x08, 0x89, 0x00,
                /* 0050 */  0xA6, 0x42, 0xE0, 0x08, 0x41, 0xBF, 0x02, 0x10,
                /* 0058 */  0x3A, 0x14, 0x20, 0x53, 0x80, 0x41, 0x01, 0x4E,
                /* 0060 */  0x11, 0x44, 0x10, 0xA5, 0x65, 0x01, 0xBA, 0x05,
                /* 0068 */  0xF8, 0x16, 0xA0, 0x1D, 0x42, 0x68, 0x91, 0xE2,
                /* 0070 */  0x9C, 0x42, 0xEB, 0x93, 0x10, 0x48, 0xAF, 0x02,
                /* 0078 */  0x4C, 0x0B, 0x10, 0x0E, 0x22, 0x8B, 0x02, 0x64,
                /* 0080 */  0x63, 0xC8, 0x36, 0x28, 0x19, 0x09, 0x13, 0x39,
                /* 0088 */  0x0C, 0x94, 0x98, 0x61, 0xA0, 0x74, 0xCE, 0x42,
                /* 0090 */  0x36, 0x81, 0x35, 0x83, 0x42, 0x51, 0x34, 0x93,
                /* 0098 */  0x28, 0x09, 0x4E, 0xE1, 0x30, 0x22, 0x04, 0x2F,
                /* 00A0 */  0x57, 0x80, 0xE4, 0x09, 0x48, 0xF3, 0xD4, 0x34,
                /* 00A8 */  0x8F, 0x83, 0x38, 0x04, 0x36, 0x02, 0x9E, 0x58,
                /* 00B0 */  0x03, 0x08, 0x8B, 0xB5, 0x52, 0x05, 0x75, 0x00,
                /* 00B8 */  0x83, 0xD9, 0xB6, 0x04, 0xC8, 0x19, 0x2D, 0x0A,
                /* 00C0 */  0xD8, 0xB3, 0x3A, 0x91, 0x26, 0x87, 0x4A, 0x25,
                /* 00C8 */  0xC1, 0xA1, 0x06, 0x6A, 0x89, 0x02, 0xCC, 0x8F,
                /* 00D0 */  0x4C, 0x13, 0x39, 0xB6, 0xD3, 0x3B, 0xC3, 0x90,
                /* 00D8 */  0x4C, 0xDA, 0x50, 0x50, 0xA3, 0xF7, 0xB4, 0x4E,
                /* 00E0 */  0xCA, 0x73, 0x8D, 0x78, 0x50, 0x86, 0x49, 0xE0,
                /* 00E8 */  0x51, 0x30, 0x34, 0x4E, 0x50, 0x16, 0x84, 0x76,
                /* 00F0 */  0x44, 0x07, 0x4A, 0x00, 0x4F, 0xC2, 0x73, 0x2C,
                /* 00F8 */  0x7E, 0xD0, 0x64, 0x22, 0x4F, 0x03, 0x31, 0x12,
                /* 0100 */  0xF8, 0x54, 0x60, 0xD1, 0x63, 0x46, 0x8F, 0x28,
                /* 0108 */  0x5C, 0xC0, 0xF3, 0x39, 0x86, 0xF3, 0xF7, 0x50,
                /* 0110 */  0x63, 0x1C, 0x45, 0xE4, 0x04, 0xF1, 0x7D, 0x0E,
                /* 0118 */  0x60, 0x50, 0x41, 0x0A, 0x12, 0x20, 0x15, 0x5D,
                /* 0120 */  0xFF, 0x7F, 0xB8, 0x68, 0x5D, 0xCF, 0x5D, 0x28,
                /* 0128 */  0x86, 0x3A, 0xEB, 0x93, 0x0A, 0x76, 0x1C, 0xBE,
                /* 0130 */  0x10, 0x70, 0x9C, 0xDE, 0x4F, 0x04, 0x74, 0x28,
                /* 0138 */  0x58, 0x19, 0x10, 0xF2, 0x28, 0xC0, 0xEA, 0xE8,
                /* 0140 */  0x34, 0x97, 0x04, 0x16, 0x27, 0xC0, 0x1A, 0x84,
                /* 0148 */  0xA6, 0x5A, 0x21, 0x82, 0x50, 0x7A, 0x13, 0x60,
                /* 0150 */  0x0B, 0x43, 0x83, 0xE9, 0x4C, 0x80, 0x31, 0x14,
                /* 0158 */  0x61, 0xD5, 0x76, 0x25, 0x10, 0x46, 0x94, 0x70,
                /* 0160 */  0x41, 0x62, 0x06, 0x8B, 0xC7, 0xCC, 0x41, 0x09,
                /* 0168 */  0x24, 0x5C, 0xCC, 0x57, 0x83, 0x38, 0x61, 0xC2,
                /* 0170 */  0xC6, 0x49, 0xE0, 0xC1, 0xE3, 0x4E, 0x01, 0x3E,
                /* 0178 */  0x38, 0x1C, 0xE0, 0x41, 0x3D, 0x05, 0x3C, 0x31,
                /* 0180 */  0x98, 0xC0, 0x53, 0x3F, 0xB8, 0x67, 0x84, 0x97,
                /* 0188 */  0x8A, 0x73, 0x8C, 0x1A, 0xE3, 0x0C, 0x12, 0x58,
                /* 0190 */  0xD2, 0x5B, 0x42, 0x16, 0x40, 0x14, 0x09, 0x1E,
                /* 0198 */  0x75, 0x6A, 0xF0, 0xF9, 0xC0, 0x23, 0x3B, 0x78,
                /* 01A0 */  0x8F, 0xF6, 0x04, 0x82, 0x1C, 0xC2, 0x11, 0x3C,
                /* 01A8 */  0x39, 0x3C, 0x18, 0x78, 0x0C, 0xEC, 0xC6, 0xE0,
                /* 01B0 */  0xA3, 0x80, 0x4F, 0x0A, 0xF8, 0x51, 0x07, 0x7C,
                /* 01B8 */  0x45, 0x78, 0x40, 0x60, 0x23, 0x0E, 0x87, 0x19,
                /* 01C0 */  0xAE, 0x87, 0xED, 0x09, 0x9C, 0xFA, 0xB3, 0x06,
                /* 01C8 */  0x3F, 0x77, 0x78, 0x70, 0xB8, 0x91, 0x9E, 0xCC,
                /* 01D0 */  0x91, 0xBD, 0x07, 0x34, 0x7B, 0x48, 0xD0, 0x81,
                /* 01D8 */  0xC2, 0x07, 0x0F, 0x76, 0x15, 0xB0, 0x67, 0x48,
                /* 01E0 */  0x22, 0x7F, 0x10, 0xA8, 0x91, 0x19, 0xDA, 0x13,
                /* 01E8 */  0x7E, 0xFF, 0x30, 0xE4, 0xF3, 0xC2, 0x61, 0xB1,
                /* 01F0 */  0xE3, 0x87, 0x0F, 0x20, 0x1E, 0x0F, 0xF8, 0xEF,
                /* 01F8 */  0x25, 0xCF, 0x1B, 0x9E, 0xBE, 0xE7, 0xEB, 0xF3,
                /* 0200 */  0x84, 0x81, 0xB1, 0xFF, 0xFF, 0x43, 0x09, 0x18,
                /* 0208 */  0x6E, 0x0F, 0xFC, 0x58, 0x02, 0xE7, 0x48, 0x02,
                /* 0210 */  0x4C, 0x26, 0xE9, 0x21, 0xF0, 0x33, 0x81, 0x87,
                /* 0218 */  0xC0, 0x07, 0xF0, 0x24, 0x71, 0x8A, 0x56, 0x3A,
                /* 0220 */  0x31, 0xE4, 0xE9, 0x05, 0xAC, 0xF9, 0x1F, 0x01,
                /* 0228 */  0x3A, 0x7C, 0x38, 0x3B, 0x88, 0x6C, 0x3C, 0x03,
                /* 0230 */  0x7C, 0x10, 0xA0, 0x6A, 0x80, 0x34, 0x53, 0xD8,
                /* 0238 */  0x04, 0xD3, 0x93, 0xEB, 0xE0, 0xC3, 0x73, 0x93,
                /* 0240 */  0x28, 0xF9, 0xC8, 0x28, 0x9C, 0xB3, 0x1E, 0x49,
                /* 0248 */  0x28, 0x88, 0x01, 0x1D, 0xE4, 0x44, 0x81, 0x3E,
                /* 0250 */  0xAD, 0x78, 0x08, 0xE7, 0xFA, 0xE4, 0xE3, 0x41,
                /* 0258 */  0xF9, 0x3E, 0xE2, 0xDB, 0x8A, 0x0F, 0x21, 0x3E,
                /* 0260 */  0x4F, 0x78, 0xF8, 0x3E, 0x29, 0xF0, 0x1F, 0x8D,
                /* 0268 */  0xAF, 0x0E, 0x46, 0xB7, 0x9A, 0x13, 0x0B, 0x0A,
                /* 0270 */  0xCC, 0x67, 0x11, 0x4E, 0x50, 0xD7, 0x65, 0x02,
                /* 0278 */  0x64, 0xFA, 0x4E, 0x0B, 0x50, 0xFF, 0xFF, 0x97,
                /* 0280 */  0x00, 0x0E, 0xE4, 0xAB, 0x81, 0x8F, 0x02, 0x8F,
                /* 0288 */  0x07, 0x6C, 0x0C, 0x4F, 0x03, 0x46, 0x33, 0x3A,
                /* 0290 */  0x0F, 0x3F, 0x59, 0x54, 0xDC, 0xC9, 0x52, 0x10,
                /* 0298 */  0x4F, 0xD6, 0x51, 0x26, 0x8B, 0x9E, 0x89, 0x2F,
                /* 02A0 */  0x00, 0x9E, 0xD1, 0x2B, 0x80, 0xE7, 0xE8, 0x09,
                /* 02A8 */  0xFB, 0x2A, 0x02, 0xEB, 0x80, 0xF0, 0x50, 0xE3,
                /* 02B0 */  0x3B, 0x06, 0x83, 0xF3, 0x64, 0x39, 0x9C, 0x27,
                /* 02B8 */  0xCB, 0xC7, 0xE2, 0x9B, 0x08, 0xF8, 0x04, 0xCE,
                /* 02C0 */  0x16, 0xE4, 0xF0, 0x98, 0x90, 0xA3, 0xA2, 0x97,
                /* 02C8 */  0x22, 0x0F, 0x8F, 0x5F, 0x0E, 0x3C, 0x9F, 0x67,
                /* 02D0 */  0x84, 0xA3, 0x7C, 0x92, 0xC0, 0x61, 0xBC, 0x61,
                /* 02D8 */  0x78, 0x88, 0xBE, 0x1F, 0xC1, 0x9A, 0xC8, 0x49,
                /* 02E0 */  0xFB, 0xB6, 0x70, 0xB2, 0x41, 0xE3, 0x87, 0xF5,
                /* 02E8 */  0xFD, 0x08, 0xB8, 0x2A, 0xB4, 0xE9, 0x53, 0xA3,
                /* 02F0 */  0x51, 0xAB, 0x06, 0x65, 0x6A, 0x94, 0x69, 0x50,
                /* 02F8 */  0xAB, 0x4F, 0xA5, 0xC6, 0x8C, 0x5D, 0xB3, 0x2C,
                /* 0300 */  0xD0, 0xC0, 0xFF, 0x7F, 0x44, 0x4C, 0xE2, 0xDA,
                /* 0308 */  0x34, 0x38, 0x07, 0x04, 0xA1, 0x71, 0xBE, 0x40,
                /* 0310 */  0x32, 0x02, 0xA2, 0x6C, 0x20, 0x02, 0x72, 0x8E,
                /* 0318 */  0xFF, 0x84, 0x80, 0x9C, 0x0A, 0x44, 0x40, 0xFE,
                /* 0320 */  0xFF, 0x03                                     
            })
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Mutex (BFWM, 0x00)
            Method (MHCF, 1, NotSerialized)
            {
                Store (BFWC (Arg0), Local0)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x25){})
                Acquire (BFWM, 0xFFFF)
                If (LLessEqual (SizeOf (Arg0), 0x25))
                {
                    Store (Arg0, BFWB)
                    CHKS ()
                    If (BFWP ())
                    {
                        CHKS ()
                        BFWL ()
                    }

                    Store (BFWB, RETB)
                }

                Release (BFWM)
                Return (RETB)
            }

            Method (MHIF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x0A){})
                Acquire (BFWM, 0xFFFF)
                BFWG (Arg0)
                Store (BFWB, RETB)
                Release (BFWM)
                Return (RETB)
            }

            Method (MHDM, 1, NotSerialized)
            {
                BDMC (Arg0)
            }
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Method (PSSG, 1, NotSerialized)
            {
                Return (PSIF (0x00, 0x00))
            }

            Method (PSSS, 1, NotSerialized)
            {
                Return (PSIF (0x01, Arg0))
            }

            Method (PSBS, 1, NotSerialized)
            {
                Return (PSIF (0x02, Arg0))
            }

            Method (BICG, 1, NotSerialized)
            {
                Return (PSIF (0x03, Arg0))
            }

            Method (BICS, 1, NotSerialized)
            {
                Return (PSIF (0x04, Arg0))
            }

            Method (BCTG, 1, NotSerialized)
            {
                Return (PSIF (0x05, Arg0))
            }

            Method (BCCS, 1, NotSerialized)
            {
                Return (PSIF (0x06, Arg0))
            }

            Method (BCSG, 1, NotSerialized)
            {
                Return (PSIF (0x07, Arg0))
            }

            Method (BCSS, 1, NotSerialized)
            {
                Return (PSIF (0x08, Arg0))
            }

            Method (BDSG, 1, NotSerialized)
            {
                Return (PSIF (0x09, Arg0))
            }

            Method (BDSS, 1, NotSerialized)
            {
                Return (PSIF (0x0A, Arg0))
            }
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Method (GILN, 0, NotSerialized)
            {
                Return (Or (0x02, ILNF))
            }

            Method (SILN, 1, NotSerialized)
            {
                If (LEqual (0x01, Arg0))
                {
                    Store (0x01, ILNF)
                    Store (0x00, BBLS)
                    Return (0x00)
                }
                ElseIf (LEqual (0x02, Arg0))
                {
                    Store (0x00, ILNF)
                    Store (0x01, BBLS)
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (GLSI, 0, NotSerialized)
            {
                If (H8DR)
                {
                    Return (Add (0x02, HPLD))
                }
                ElseIf (And (RBEC (0x46), 0x04))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (0x02)
                }
            }
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Method (GDLN, 0, NotSerialized)
            {
                Return (Or (0x02, PLUX))
            }

            Method (SDLN, 1, NotSerialized)
            {
                If (LEqual (0x01, Arg0))
                {
                    Store (0x01, PLUX)
                    Return (0x00)
                }
                ElseIf (LEqual (0x02, Arg0))
                {
                    Store (0x00, PLUX)
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Method (FPSW, 1, Serialized)
            {
                Switch (And (Arg0, 0xFFFF))
                {
                    Case (0x0100)
                    {
                        Store (GLFP (), Local0)
                        Store (Local0, FPSU)
                        Or (ShiftLeft (Local0, 0x01, Local0), 0x01, Local1)
                        Return (Local1)
                    }
                    Case (0x0101)
                    {
                        ShiftRight (Arg0, 0x10, Local0)
                        SLFP (Local0)
                        Return (0x00)
                    }
                    Default
                    {
                        Return (0x80000000)
                    }

                }

                Return (0x00)
            }

            Method (GLFP, 0, NotSerialized)
            {
                If (LEqual (FPCI (0x00, 0x00), 0x01))
                {
                    Return (0x01)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (SLFP, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x01))
                {
                    Store (0x01, FPSU)
                    FPCI (0x01, 0x01)
                }
                Else
                {
                    Store (0x00, FPSU)
                    FPCI (0x01, 0x00)
                }
            }
        }

        OperationRegion (ECMS, SystemIO, 0x72, 0x02)
        Field (ECMS, ByteAcc, Lock, Preserve)
        {
            INDX,   8, 
            DATA,   8
        }

        Method (RECM, 1, Serialized)
        {
            Store (Arg0, INDX)
            Return (DATA)
        }

        Method (WECM, 2, Serialized)
        {
            Store (Arg0, INDX)
            Store (Arg1, DATA)
        }

        Scope (PCI0.LPC0.EC0.HKEY)
        {
            Method (GSSS, 1, NotSerialized)
            {
                Store (0x00, Local0)
                If (LEqual (And (SHDW, 0x80), 0x00))
                {
                    Or (Local0, 0x00010000, Local0)
                    Or (Local0, 0x28000000, Local0)
                }

                If (And (SHDW, 0x01))
                {
                    Or (Local0, 0x01, Local0)
                }

                Return (Local0)
            }

            Method (SSSS, 1, NotSerialized)
            {
                If (LEqual (And (SHDW, 0x80), 0x00))
                {
                    If (LEqual (Arg0, 0x00))
                    {
                        If (LNotEqual (And (SHDW, 0x01), 0x00))
                        {
                            Store (0x00, ^^^^SMB.PLEN)
                            Store (And (SHDW, 0xFFFFFFFE), SHDW)
                            WECM (0xCE, SHDW)
                            MHKQ (0x130F)
                            Return (0x00)
                        }
                    }

                    If (LEqual (Arg0, 0x01))
                    {
                        If (LEqual (And (SHDW, 0x01), 0x00))
                        {
                            Store (0x01, ^^^^SMB.PLEN)
                            Store (Or (SHDW, 0x01), SHDW)
                            WECM (0xCE, SHDW)
                            MHKQ (0x130F)
                            Return (0x00)
                        }
                    }
                }

                Return (0x80000000)
            }

            Method (TSSS, 0, NotSerialized)
            {
                If (LEqual (And (SHDW, 0x80), 0x00))
                {
                    If (LNotEqual (And (SHDW, 0x01), 0x00))
                    {
                        SSSS (0x00)
                        Return (0x00)
                    }

                    If (LEqual (And (SHDW, 0x01), 0x00))
                    {
                        SSSS (0x01)
                        Return (0x00)
                    }
                }

                Return (0x80000000)
            }

            Method (CSSS, 0, NotSerialized)
            {
                If (LAnd (LEqual (And (SHDW, 0x80), 0x00), LNotEqual (And (SHDW, 0x01), 0x00)))
                {
                    Return (SSSS (0x01))
                }
                Else
                {
                    Return (SSSS (0x00))
                }
            }
        }

        Scope (PCI0.LPC0.EC0)
        {
            Device (LSSD)
            {
                Name (_HID, EisaId ("LEN0111"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }
    }

    Scope (\)
    {
        Name (HPDT, Package (0x09)
        {
            "LEGACYHP", 
            0x80000000, 
            0x80000000, 
            "NATIVEHP", 
            0x80000000, 
            0x80000000, 
            "THERMALX", 
            0x80000000, 
            0x80000000
        })
        Name (DDB0, 0x00)
        Name (DDB1, 0x00)
        Name (DDB2, 0x00)
    }

    Scope (_GPE)
    {
        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            TPST (0x3908)
            If (LEqual (TBEN, Zero))
            {
                Notify (\_SB.PCI0.GPP0, 0x02)
            }

            Notify (\_SB.PCI0.GPP5, 0x02)
            Notify (\_SB.PCI0.GP17, 0x02)
            Notify (\_SB.PCI0.GP18, 0x02)
            Store (\_SB.PCI0.LPC0.EC0.HWAK, Local0)
            Store (Local0, RRBF)
            If (And (Local0, 0x01)){}
            If (And (Local0, 0x02)){}
            If (And (Local0, 0x04))
            {
                Notify (\_SB.LID, 0x02)
            }

            If (And (Local0, 0x08))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x10))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x80))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            Store (0x00, \_SB.PCI0.LPC0.EC0.HWAK)
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            TPST (0x390E)
            Notify (\_SB.PCI0.GPP4, 0x02)
        }

        Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            TPST (0x3919)
            Notify (\_SB.PCI0.GP17.XHC0, 0x02)
            Notify (\_SB.PCI0.GP17.XHC1, 0x02)
        }
    }

    Name (TSOS, 0x75)
    If (CondRefOf (\XOSI))
    {
        If (XOSI ("Windows 2009"))
        {
            Store (0x50, TSOS)
        }

        If (XOSI ("Windows 2015"))
        {
            Store (0x70, TSOS)
        }
    }

    Scope (_SB)
    {
        OperationRegion (SMIC, SystemMemory, 0xFED80000, 0x00800000)
        Field (SMIC, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36A), 
            SMIB,   8
        }

        OperationRegion (SSMI, SystemIO, SMIB, 0x02)
        Field (SSMI, AnyAcc, NoLock, Preserve)
        {
            SMIW,   16
        }

        OperationRegion (ECMC, SystemIO, 0x72, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            ECMI,   8, 
            ECMD,   8
        }

        IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            FRTB,   32
        }

        OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
        Field (FRTP, AnyAcc, NoLock, Preserve)
        {
            PEBA,   32, 
                ,   5, 
            IC0E,   1, 
            IC1E,   1, 
            IC2E,   1, 
            IC3E,   1, 
            IC4E,   1, 
            IC5E,   1, 
            UT0E,   1, 
            UT1E,   1, 
                ,   1, 
                ,   1, 
            ST_E,   1, 
            UT2E,   1, 
                ,   1, 
            EMMD,   2, 
                ,   3, 
            XHCE,   1, 
                ,   1, 
                ,   1, 
            UT3E,   1, 
            ESPI,   1, 
            EMME,   1, 
            HFPE,   1, 
            Offset (0x08), 
            PCEF,   1, 
                ,   4, 
            IC0D,   1, 
            IC1D,   1, 
            IC2D,   1, 
            IC3D,   1, 
            IC4D,   1, 
            IC5D,   1, 
            UT0D,   1, 
            UT1D,   1, 
                ,   1, 
                ,   1, 
            ST_D,   1, 
            UT2D,   1, 
                ,   1, 
            EHCD,   1, 
                ,   4, 
            XHCD,   1, 
            SD_D,   1, 
                ,   1, 
            UT3D,   1, 
                ,   1, 
            EMD3,   1, 
                ,   2, 
            S03D,   1, 
            FW00,   16, 
            FW01,   32, 
            FW02,   16, 
            FW03,   32, 
            SDS0,   8, 
            SDS1,   8, 
            CZFG,   1, 
            Offset (0x20), 
            SD10,   32, 
            EH10,   32, 
            XH10,   32, 
            STBA,   32
        }

        OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
        Field (FCFG, DWordAcc, NoLock, Preserve)
        {
            Offset (0xA3044), 
            IPDE,   32, 
            IMPE,   32, 
            Offset (0xA3078), 
                ,   2, 
            LDQ0,   1, 
            Offset (0xA30CB), 
                ,   7, 
            AUSS,   1
        }

        OperationRegion (IOMX, SystemMemory, 0xFED80D00, 0x0100)
        Field (IOMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0x15), 
            IM15,   8, 
            IM16,   8, 
            Offset (0x1F), 
            IM1F,   8, 
            IM20,   8, 
            Offset (0x44), 
            IM44,   8, 
            Offset (0x46), 
            IM46,   8, 
            Offset (0x4A), 
            IM4A,   8, 
            IM4B,   8, 
            Offset (0x57), 
            IM57,   8, 
            IM58,   8, 
            Offset (0x68), 
            IM68,   8, 
            IM69,   8, 
            IM6A,   8, 
            IM6B,   8, 
            Offset (0x6D), 
            IM6D,   8
        }

        OperationRegion (FACR, SystemMemory, 0xFED81E00, 0x0100)
        Field (FACR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x80), 
                ,   28, 
            RD28,   1, 
                ,   1, 
            RQTY,   1, 
            Offset (0x84), 
                ,   28, 
            SD28,   1, 
                ,   1, 
            Offset (0xA0), 
            PG1A,   1
        }

        OperationRegion (EMMX, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0xD0), 
                ,   17, 
            FC18,   1, 
            FC33,   1, 
                ,   7, 
            CD_T,   1, 
            WP_T,   1
        }

        OperationRegion (EMMB, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMB, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA4), 
            E0A4,   32, 
            E0A8,   32, 
            Offset (0xB0), 
            E0B0,   32, 
            Offset (0xD0), 
            E0D0,   32, 
            Offset (0x116), 
            E116,   32
        }

        Name (SVBF, Buffer (0x0100)
        {
             0x00                                           
        })
        CreateDWordField (SVBF, 0x00, S0A4)
        CreateDWordField (SVBF, 0x04, S0A8)
        CreateDWordField (SVBF, 0x08, S0B0)
        CreateDWordField (SVBF, 0x0C, S0D0)
        CreateDWordField (SVBF, 0x10, S116)
        Method (SECR, 0, Serialized)
        {
            Store (E116, S116)
            Store (Zero, RQTY)
            Store (One, RD28)
            Store (SD28, Local0)
            While (Local0)
            {
                Store (SD28, Local0)
            }
        }

        Method (RECR, 0, Serialized)
        {
            Store (S116, E116)
        }

        OperationRegion (LUIE, SystemMemory, 0xFEDC0020, 0x04)
        Field (LUIE, AnyAcc, NoLock, Preserve)
        {
            IER0,   1, 
            IER1,   1, 
            IER2,   1, 
            IER3,   1, 
            UOL0,   1, 
            UOL1,   1, 
            UOL2,   1, 
            UOL3,   1, 
            WUR0,   2, 
            WUR1,   2, 
            WUR2,   2, 
            WUR3,   2
        }

        Method (FRUI, 2, Serialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Store (IUA0, Arg1)
            }

            If (LEqual (Arg0, 0x01))
            {
                Store (IUA1, Arg1)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (IUA2, Arg1)
            }

            If (LEqual (Arg0, 0x03))
            {
                Store (IUA3, Arg1)
            }
        }

        Method (FUIO, 1, Serialized)
        {
            If (LEqual (IER0, 0x01))
            {
                If (LEqual (WUR0, Arg0))
                {
                    Return (0x00)
                }
            }

            If (LEqual (IER1, 0x01))
            {
                If (LEqual (WUR1, Arg0))
                {
                    Return (0x01)
                }
            }

            If (LEqual (IER2, 0x01))
            {
                If (LEqual (WUR2, Arg0))
                {
                    Return (0x02)
                }
            }

            If (LEqual (IER3, 0x01))
            {
                If (LEqual (WUR3, Arg0))
                {
                    Return (0x03)
                }
            }

            Return (0x0F)
        }

        Method (SRAD, 2, Serialized)
        {
            ShiftLeft (Arg0, 0x01, Local0)
            Add (Local0, 0xFED81E40, Local0)
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            Store (One, ADIS)
            Store (Zero, ADSR)
            Stall (Arg1)
            Store (One, ADSR)
            Store (Zero, ADIS)
            Stall (Arg1)
        }

        Method (DSAD, 2, Serialized)
        {
            ShiftLeft (Arg0, 0x01, Local0)
            Add (Local0, 0xFED81E40, Local0)
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If (LNotEqual (Arg0, ADTD))
            {
                If (LEqual (Arg1, 0x00))
                {
                    Store (0x00, ADTD)
                    Store (One, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, 0x07))
                    {
                        Store (ADDS, Local0)
                    }
                }

                If (LEqual (Arg1, 0x03))
                {
                    Store (Zero, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, 0x00))
                    {
                        Store (ADDS, Local0)
                    }

                    Store (0x03, ADTD)
                }
            }
        }

        Method (HSAD, 2, Serialized)
        {
            ShiftLeft (0x01, Arg0, Local3)
            ShiftLeft (Arg0, 0x01, Local0)
            Add (Local0, 0xFED81E40, Local0)
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If (LNotEqual (Arg1, ADTD))
            {
                If (LEqual (Arg1, 0x00))
                {
                    Store (One, PG1A)
                    Store (0x00, ADTD)
                    Store (One, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, 0x07))
                    {
                        Store (ADDS, Local0)
                    }

                    Store (One, RQTY)
                    Store (One, RD28)
                    Store (SD28, Local0)
                    While (LNot (Local0))
                    {
                        Store (SD28, Local0)
                    }
                }

                If (LEqual (Arg1, 0x03))
                {
                    Store (Zero, RQTY)
                    Store (One, RD28)
                    Store (SD28, Local0)
                    While (Local0)
                    {
                        Store (SD28, Local0)
                    }

                    Store (Zero, ADPD)
                    Store (ADDS, Local0)
                    While (LNotEqual (Local0, 0x00))
                    {
                        Store (ADDS, Local0)
                    }

                    Store (0x03, ADTD)
                    Store (Zero, PG1A)
                }
            }
        }

        OperationRegion (FPIC, SystemIO, 0x0C00, 0x02)
        Field (FPIC, AnyAcc, NoLock, Preserve)
        {
            FPII,   8, 
            FPID,   8
        }

        IndexField (FPII, FPID, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF4), 
            IUA0,   8, 
            IUA1,   8, 
            Offset (0xF8), 
            IUA2,   8, 
            IUA3,   8
        }

        Device (HFP1)
        {
            Name (_HID, "AMDI0060")  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (HFPE)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC11000,         // Address Base
                        0x00000100,         // Address Length
                        )
                })
                Return (RBUF)
            }
        }

        Device (GPIO)
        {
            Name (_HID, "AMDI0030")  // _HID: Hardware ID
            Name (_CID, "AMDI0030")  // _CID: Compatible ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000009,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED81200,         // Address Base
                        0x00000100,         // Address Length
                        )
                })
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {10}
                Memory32Fixed (ReadWrite,
                    0xFEDC2000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (TSOS, 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }
        }
    }

    Scope (_SB.I2CA)
    {
        Device (UCMX)
        {
            Name (_HID, "INT3515")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (0x00)
                        {
                            Return (Buffer (0x01)
                            {
                                 0x03                                           
                            })
                        }
                        Case (0x01)
                        {
                        }

                    }
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBFX, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0023, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x0027, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0045
                        }
                })
                Return (SBFX)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SMB1)
        {
            Name (_HID, "SMB0001")  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0B20,             // Range Minimum
                    0x0B20,             // Range Maximum
                    0x20,               // Alignment
                    0x20,               // Length
                    )
                IRQ (Level, ActiveLow, Shared, )
                    {7}
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_SB.PCI0.LPC0.EC0.HKEY)
    {
        Name (MPL0, 0x2AF8)
        Name (SPP0, 0x2AF8)
        Name (FPP0, 0x2AF8)
        Name (STC0, 0x05)
        Name (ALA0, 0x1999)
        Name (STL0, 0x2D00)
        Name (ERC0, 0x0147)
        Name (ERA0, 0x2666)
        Name (SM10, 0x032F)
        Name (SM20, 0xDD)
        Name (SCA0, 0xF464)
        Name (TCL0, 0x46)
        Name (MPL1, 0x2AF8)
        Name (SPP1, 0x2AF8)
        Name (FPP1, 0x2AF8)
        Name (STC1, 0x05)
        Name (ALA1, 0x1999)
        Name (STL1, 0x2D00)
        Name (ERC1, 0x0147)
        Name (ERA1, 0x2666)
        Name (SM11, 0x032F)
        Name (SM21, 0xDD)
        Name (SCA1, 0xF464)
        Name (TCL1, 0x46)
        Name (MPL2, 0x4268)
        Name (SPP2, 0x59D8)
        Name (FPP2, 0x61A8)
        Name (STC2, 0x05)
        Name (ALA2, 0x1999)
        Name (STL2, 0x3500)
        Name (ERC2, 0x0147)
        Name (ERA2, 0x2666)
        Name (SM12, 0x02D0)
        Name (SM22, 0x025F)
        Name (SCA2, 0xCAB9)
        Name (TCL2, 0x60)
        Name (MPL3, 0x2AF8)
        Name (SPP3, 0x3A98)
        Name (FPP3, 0x4E20)
        Name (STC3, 0x05)
        Name (ALA3, 0x1999)
        Name (STL3, 0x2D00)
        Name (ERC3, 0x0147)
        Name (ERA3, 0x2666)
        Name (SM13, 0x02D1)
        Name (SM23, 0x017C)
        Name (SCA3, 0xEAAE)
        Name (TCL3, 0x56)
        Name (MPL4, 0x2AF8)
        Name (SPP4, 0x2AF8)
        Name (FPP4, 0x2AF8)
        Name (STC4, 0x05)
        Name (ALA4, 0x1999)
        Name (STL4, 0x2D00)
        Name (ERC4, 0x0147)
        Name (ERA4, 0x2666)
        Name (SM14, 0x032F)
        Name (SM24, 0xDD)
        Name (SCA4, 0x00097FE4)
        Name (TCL5, 0x46)
        Name (TCL4, 0x46)
        Name (SPL7, 0x2EE0)
        Name (FPP7, 0x2EE0)
        Name (SPP7, 0x2EE0)
        Method (DYTC, 1, Serialized)
        {
            Store (Arg0, Local0)
            Store (Arg0, DYPR)
            Store (0x00, Local1)
            Name (XX11, Buffer (0x07){})
            Name (TSCB, 0x0F)
            Name (TSCC, 0x0F)
            Name (MSCB, 0x00)
            CreateWordField (XX11, 0x00, SSZE)
            CreateByteField (XX11, 0x02, SMUF)
            CreateDWordField (XX11, 0x03, SMUD)
            Store (0x07, SSZE)
            Switch (ToInteger (And (Local0, 0x01FF)))
            {
                Case (0x00)
                {
                    Store (0x0100, Local1)
                    Or (Local1, 0x60000000, Local1)
                    Or (Local1, 0x00, Local1)
                    Or (Local1, 0x01, Local1)
                }
                Case (0x01)
                {
                    And (ShiftRight (Local0, 0x0C), 0x0F, Local2)
                    And (ShiftRight (Local0, 0x10), 0x0F, Local3)
                    And (ShiftRight (Local0, 0x14), 0x01, Local4)
                    Switch (Local2)
                    {
                        Case (0x01)
                        {
                            If (LNotEqual (Local3, 0x0F))
                            {
                                Store (0x0A, Local1)
                                Return (Local1)
                            }

                            If (LEqual (Local4, 0x00))
                            {
                                If (LEqual (0x01, VCQL))
                                {
                                    Store (0x00, VCQL)
                                }
                            }
                            ElseIf (LAnd (LEqual (VPSC, 0x01), LOr (LEqual (SPSC, 0x07), LEqual (SPSC, 0x08))))
                            {
                                Store (0x01, VCQL)
                            }
                        }
                        Case (0x04)
                        {
                            If (LNotEqual (Local3, 0x0F))
                            {
                                Store (0x0A, Local1)
                                Return (Local1)
                            }

                            If (LEqual (Local4, 0x00))
                            {
                                Store (0x00, VSTP)
                            }
                            Else
                            {
                                Store (0x01, VSTP)
                            }
                        }
                        Case (0x0C)
                        {
                            If (LNotEqual (Local3, 0x0F))
                            {
                                Store (0x0A, Local1)
                                Return (Local1)
                            }

                            If (LEqual (Local4, 0x00))
                            {
                                Store (0x00, VMSC)
                            }
                            Else
                            {
                                Store (0x01, VMSC)
                            }
                        }
                        Case (0x0D)
                        {
                            If (LAnd (LLessEqual (Local3, 0x08), LGreaterEqual (Local3, 0x01)))
                            {
                                If (LNotEqual (Local4, 0x01))
                                {
                                    Store (0x0A, Local1)
                                    Return (Local1)
                                }
                            }
                            ElseIf (LEqual (Local3, 0x0F))
                            {
                                If (LNotEqual (Local4, 0x00))
                                {
                                    Store (0x0A, Local1)
                                    Return (Local1)
                                }
                            }
                            Else
                            {
                                Store (0x0A, Local1)
                                Return (Local1)
                            }

                            If (LEqual (Local4, 0x00))
                            {
                                Store (0x00, VPSC)
                                Store (0x00, SPSC)
                            }
                            Else
                            {
                                Store (0x00, VCQL)
                                Store (0x01, VPSC)
                                Store (Local3, SPSC)
                            }
                        }
                        Case (0x00)
                        {
                            If (LNotEqual (Local3, 0x0F))
                            {
                                Store (0x0A, Local1)
                                Return (Local1)
                            }
                        }
                        Default
                        {
                            Store (0x02, Local1)
                            Return (Local1)
                        }

                    }

                    If (H8DR)
                    {
                        If (LOr (LEqual (FANE, 0x01), LEqual (FEXI, 0x00)))
                        {
                            Store (0x01, VSTP)
                        }
                    }
                    ElseIf (LOr (LEqual (And (RBEC (0x34), 0x10), 0x00), LEqual (And (RBEC (0x35), 0x10), 0x10)))
                    {
                        Store (0x01, VSTP)
                    }

                    If (LEqual (VCQL, 0x01))
                    {
                        Store (0x01, CICF)
                        Store (0x22, OSML)
                        Store (0x2E, SMUF)
                        Store (MPL0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x06, SMUF)
                        Store (FPP0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x07, SMUF)
                        Store (SPP0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x08, SMUF)
                        Store (STC0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x20, SMUF)
                        Store (ALA0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x22, SMUF)
                        Store (STL0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x24, SMUF)
                        Store (ERC0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x25, SMUF)
                        Store (ERA0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x26, SMUF)
                        Store (SM10, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x27, SMUF)
                        Store (SM20, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x2C, SMUF)
                        Store (SCA0, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x03, SMUF)
                        If (LEqual (VSTP, 0x01))
                        {
                            Store (TCL4, SMUD)
                        }
                        Else
                        {
                            Store (TCL0, SMUD)
                        }

                        ALIB (0x0C, XX11)
                    }
                    ElseIf (LEqual (VMSC, 0x01))
                    {
                        Store (0x0C, CICF)
                        Store (0x2E, SMUF)
                        Store (MPL4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x06, SMUF)
                        Store (FPP4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x07, SMUF)
                        Store (SPP4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x08, SMUF)
                        Store (STC4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x20, SMUF)
                        Store (ALA4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x22, SMUF)
                        Store (STL4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x24, SMUF)
                        Store (ERC4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x25, SMUF)
                        Store (ERA4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x26, SMUF)
                        Store (SM14, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x27, SMUF)
                        Store (SM24, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x2C, SMUF)
                        Store (SCA4, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x03, SMUF)
                        If (LEqual (VSTP, 0x01))
                        {
                            Store (TCL4, SMUD)
                        }
                        Else
                        {
                            Store (TCL5, SMUD)
                        }

                        ALIB (0x0C, XX11)
                    }
                    ElseIf (LEqual (VPSC, 0x01))
                    {
                        Store (0x0D, CICF)
                        Store (SPSC, Local7)
                        Switch (Local7)
                        {
                            Case (Package (0x02)
                                {
                                    0x07, 
                                    0x08
                                }

)
                            {
                                Store (0x02, OSML)
                                Store (0x2E, SMUF)
                                Store (MPL2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x06, SMUF)
                                Store (FPP2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x07, SMUF)
                                Store (SPP2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x08, SMUF)
                                Store (STC2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x20, SMUF)
                                Store (ALA2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x22, SMUF)
                                Store (STL2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x24, SMUF)
                                Store (ERC2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x25, SMUF)
                                Store (ERA2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x26, SMUF)
                                Store (SM12, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x27, SMUF)
                                Store (SM22, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x2C, SMUF)
                                Store (SCA2, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x03, SMUF)
                                If (LEqual (VSTP, 0x01))
                                {
                                    Store (TCL4, SMUD)
                                }
                                Else
                                {
                                    Store (TCL2, SMUD)
                                }

                                ALIB (0x0C, XX11)
                            }
                            Case (Package (0x03)
                                {
                                    0x02, 
                                    0x03, 
                                    0x04
                                }

)
                            {
                                Store (0x01, OSML)
                                Store (0x2E, SMUF)
                                Store (MPL1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x06, SMUF)
                                Store (FPP1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x07, SMUF)
                                Store (SPP1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x08, SMUF)
                                Store (STC1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x20, SMUF)
                                Store (ALA1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x22, SMUF)
                                Store (STL1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x24, SMUF)
                                Store (ERC1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x25, SMUF)
                                Store (ERA1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x26, SMUF)
                                Store (SM11, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x27, SMUF)
                                Store (SM21, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x2C, SMUF)
                                Store (SCA1, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x03, SMUF)
                                If (LEqual (VSTP, 0x01))
                                {
                                    Store (TCL4, SMUD)
                                }
                                Else
                                {
                                    Store (TCL1, SMUD)
                                }

                                ALIB (0x0C, XX11)
                            }
                            Default
                            {
                                Store (0x04, OSML)
                                Store (0x2E, SMUF)
                                Store (MPL3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x06, SMUF)
                                Store (FPP3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x07, SMUF)
                                Store (SPP3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x08, SMUF)
                                Store (STC3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x20, SMUF)
                                Store (ALA3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x22, SMUF)
                                Store (STL3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x24, SMUF)
                                Store (ERC3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x25, SMUF)
                                Store (ERA3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x26, SMUF)
                                Store (SM13, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x27, SMUF)
                                Store (SM23, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x2C, SMUF)
                                Store (SCA3, SMUD)
                                ALIB (0x0C, XX11)
                                Store (0x03, SMUF)
                                If (LEqual (VSTP, 0x01))
                                {
                                    Store (TCL4, SMUD)
                                }
                                Else
                                {
                                    Store (TCL3, SMUD)
                                }

                                ALIB (0x0C, XX11)
                            }

                        }
                    }
                    Else
                    {
                        Store (0x00, CICF)
                        Store (0x04, OSML)
                        Store (0x2E, SMUF)
                        Store (MPL3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x06, SMUF)
                        Store (FPP3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x07, SMUF)
                        Store (SPP3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x08, SMUF)
                        Store (STC3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x20, SMUF)
                        Store (ALA3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x22, SMUF)
                        Store (STL3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x24, SMUF)
                        Store (ERC3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x25, SMUF)
                        Store (ERA3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x26, SMUF)
                        Store (SM13, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x27, SMUF)
                        Store (SM23, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x2C, SMUF)
                        Store (SCA3, SMUD)
                        ALIB (0x0C, XX11)
                        Store (0x03, SMUF)
                        If (LEqual (VSTP, 0x01))
                        {
                            Store (TCL4, SMUD)
                        }
                        Else
                        {
                            Store (TCL3, SMUD)
                        }

                        ALIB (0x0C, XX11)
                    }

                    Store (VSTD, Local5)
                    Or (ShiftLeft (VCQL, 0x01), Local5, Local5)
                    Or (ShiftLeft (VSTP, 0x04), Local5, Local5)
                    Or (ShiftLeft (VMSC, 0x0C), Local5, Local5)
                    Or (ShiftLeft (VPSC, 0x0D), Local5, Local5)
                    Store (ShiftLeft (CICF, 0x08), Local1)
                    If (LEqual (CICF, 0x03))
                    {
                        Store (SMYH, CICM)
                    }
                    ElseIf (LEqual (CICF, 0x0B))
                    {
                        Store (SMMC, CICM)
                    }
                    ElseIf (LEqual (CICF, 0x0D))
                    {
                        Store (SPSC, CICM)
                    }
                    Else
                    {
                        Store (0x0F, CICM)
                    }

                    Or (ShiftLeft (CICM, 0x0C), Local1, Local1)
                    Or (ShiftLeft (Local5, 0x10), Local1, Local1)
                    Or (Local1, 0x01, Local1)
                    If (DHKC)
                    {
                        MHKQ (0x6032)
                    }
                }
                Case (0x02)
                {
                    Store (VSTD, Local5)
                    Or (ShiftLeft (VCQL, 0x01), Local5, Local5)
                    Or (ShiftLeft (VSTP, 0x04), Local5, Local5)
                    Or (ShiftLeft (VMSC, 0x0C), Local5, Local5)
                    Or (ShiftLeft (VPSC, 0x0D), Local5, Local5)
                    Store (ShiftLeft (CICF, 0x08), Local1)
                    If (LEqual (CICF, 0x03))
                    {
                        Store (SMYH, CICM)
                    }
                    ElseIf (LEqual (CICF, 0x0B))
                    {
                        Store (SMMC, CICM)
                    }
                    ElseIf (LEqual (CICF, 0x0D))
                    {
                        Store (SPSC, CICM)
                    }
                    Else
                    {
                        Store (0x0F, CICM)
                    }

                    Or (ShiftLeft (CICM, 0x0C), Local1, Local1)
                    Or (ShiftLeft (Local5, 0x10), Local1, Local1)
                    Or (Local1, 0x01, Local1)
                }
                Case (0x09)
                {
                    Store (0x01, MSCB)
                    Store (0x00, Local1)
                    Or (Local1, 0x01, Local1)
                }
                Case (0x03)
                {
                    Store (ShiftLeft (FCAP, 0x10), Local1)
                    Or (Local1, 0x01, Local1)
                }
                Case (0x04)
                {
                    Store (ShiftLeft (MYHC, 0x10), Local1)
                    Or (Local1, 0x01, Local1)
                }
                Case (0x06)
                {
                    And (ShiftRight (Local0, 0x09), 0x0F, Local2)
                    If (LNotEqual (Local2, 0x01))
                    {
                        Store (ShiftLeft (MMCC, 0x10), Local1)
                    }
                    Else
                    {
                        Store (0x0200, Local1)
                    }

                    Or (Local1, 0x01, Local1)
                }
                Case (0x05)
                {
                    If (0xFFFFFFFF)
                    {
                        Store (0x0500, Local1)
                        Or (Local1, 0x10E00000, Local1)
                    }

                    Or (Local1, 0x01, Local1)
                }
                Case (0x0100)
                {
                    Store (0x10010000, Local1)
                    Or (Local1, 0x01, Local1)
                }
                Case (0x01FF)
                {
                    Store (0x00, VCQL)
                    Store (0x00, VTIO)
                    Store (0x00, VMYH)
                    Store (0x00, VSTP)
                    Store (0x00, VCQH)
                    Store (0x00, VDCC)
                    Store (0x00, VSFN)
                    Store (0x00, VDMC)
                    Store (0x00, VFHP)
                    Store (0x00, VIFC)
                    Store (0x00, VMMC)
                    Store (0x00, VMSC)
                    Store (0x00, VPSC)
                    Store (0x00, VCSC)
                    Store (0x00, SMYH)
                    Store (0x00, SMMC)
                    Store (0x00, SPSC)
                    Store (0x00, CICF)
                    Store (0x0F, CICM)
                    Store (VSTD, Local5)
                    Or (ShiftLeft (VCQL, 0x01), Local5, Local5)
                    Or (ShiftLeft (VSTP, 0x04), Local5, Local5)
                    Or (ShiftLeft (VMSC, 0x0C), Local5, Local5)
                    Or (ShiftLeft (VPSC, 0x0D), Local5, Local5)
                    Store (ShiftLeft (CICF, 0x08), Local1)
                    Or (ShiftLeft (CICM, 0x0C), Local1, Local1)
                    Or (ShiftLeft (Local5, 0x10), Local1, Local1)
                    Or (Local1, 0x01, Local1)
                }
                Default
                {
                    Store (0x04, Local1)
                }

            }

            Return (Local1)
        }
    }

    Scope (_SB.PCI0.LPC0.EC0)
    {
        Method (ATMC, 0, NotSerialized)
        {
            If (LAnd (WNTF, TATC))
            {
                If (HPAC)
                {
                    Store (TCFA, Local0)
                    Store (TCTA, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX)
                    If (LEqual (TCTA, 0x00))
                    {
                        Store (TCR0, TCRT)
                        Store (TPS0, TPSV)
                    }
                    ElseIf (LEqual (TCTA, 0x01))
                    {
                        Store (TCR1, TCRT)
                        Store (TPS1, TPSV)
                    }
                    Else
                    {
                    }
                }
                Else
                {
                    Store (TCFD, Local0)
                    Store (TCTD, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX)
                    If (LEqual (TCTD, 0x00))
                    {
                        Store (TCR0, TCRT)
                        Store (TPS0, TPSV)
                    }
                    ElseIf (LEqual (TCTD, 0x01))
                    {
                        Store (TCR1, TCRT)
                        Store (TPS1, TPSV)
                    }
                    Else
                    {
                    }
                }

                If (Local3)
                {
                    If (^HKEY.DHKC)
                    {
                        ^HKEY.MHKQ (0x6030)
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.LPC0.EC0)
    {
        Device (ITSD)
        {
            Name (_HID, EisaId ("LEN0100"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (_TZ)
    {
        ThermalZone (THM0)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (TCRT)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (H8DR)
                {
                    Store (\_SB.PCI0.LPC0.EC0.TMP0, Local0)
                    Store (\_SB.PCI0.LPC0.EC0.TSL2, Local1)
                    Store (\_SB.PCI0.LPC0.EC0.TSL3, Local2)
                }
                Else
                {
                    Store (RBEC (0x78), Local0)
                    Store (And (RBEC (0x8A), 0x7F), Local1)
                    Store (And (RBEC (0x8B), 0x7F), Local2)
                }

                If (LEqual (Local0, 0x80))
                {
                    Store (0x30, Local0)
                }

                If (Local2)
                {
                    TSDL ()
                    Return (TCRT)
                }

                If (LNot (\_SB.PCI0.LPC0.EC0.HKEY.DHKC))
                {
                    If (Local1)
                    {
                        TSDL ()
                        Return (TCRT)
                    }
                }

                Return (_C2K (Local0))
            }
        }

        Method (_C2K, 1, Serialized)
        {
            Add (Multiply (Arg0, 0x0A), 0x0AAC, Local0)
            If (LLessEqual (Local0, 0x0AAC))
            {
                Store (0x0C8C, Local0)
            }
            ElseIf (LGreater (Local0, 0x0FAC))
            {
                Store (0x0C8C, Local0)
            }

            Return (Local0)
        }
    }

    Scope (_SB.PCI0.LPC0.EC0)
    {
        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_TZ.THM0, 0x80)
            If (H8DR)
            {
                Store (TSL2, Local1)
                Store (TSL1, Local2)
            }
            Else
            {
                Store (And (RBEC (0x8A), 0x7F), Local1)
                Store (And (RBEC (0x89), 0x7F), Local2)
            }

            If (And (Local2, 0x76))
            {
                ^HKEY.DYTC (0x001F4001)
            }
            Else
            {
                ^HKEY.DYTC (0x000F4001)
            }

            If (LAnd (^HKEY.DHKC, Local1))
            {
                ^HKEY.MHKQ (0x6022)
            }

            If (LNot (VIGD))
            {
                VTHR ()
            }
        }
    }
}

